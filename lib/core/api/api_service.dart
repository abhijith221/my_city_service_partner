part of '../core.dart';

// ignore: constant_identifier_names
enum Method { POST, GET, PUT, DELETE, PATCH }

class APIHelper {
  final Dio _dio;

  APIHelper()
    : _dio = Dio(
        BaseOptions(
          connectTimeout: Duration(seconds: 20),
          baseUrl: ApiEndpoints.baseURL,
          validateStatus: (_) => true, // Accept all status codes
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/json",
          },
        ),
      );

  Future<Response> request({
    required String url,
    required Method method,
    dynamic params,
    String? token,
    bool isMultipart = false, // Add this flag to indicate multipart request
    Duration timeout = const Duration(seconds: 10),
  }) async {
    log("-----------------------------------------------");

    log("🔗 URL: ${ApiEndpoints.baseURL}$url 📝 Method: ${method.name}");

    if (token == null || token.isEmpty) {
      log("🔑 No Token");
    } else {
      log(
        "🔑 Authorisation: ${token.substring(0, token.length > 20 ? 20 : token.length)}...",
      );
    }

    try {
      // For multipart requests, let Dio set the Content-Type (it includes the
      // proper boundary). Explicitly setting "multipart/form-data" without a
      // boundary can cause invalid-boundary errors on the server.
      final effectiveTimeout = isMultipart
          ? const Duration(seconds: 20)
          : timeout;

      final headersMap = <String, dynamic>{
        "Accept": "application/json",
        if (!isMultipart) "Content-Type": "application/json",
        if (token != null) "Authorization": "Bearer $token",
      };

      final options = Options(
        headers: headersMap,
        sendTimeout: effectiveTimeout,
        receiveTimeout: effectiveTimeout,
        validateStatus: (_) => true, // Accept all status codes
      );

      dynamic requestData = params;

      // Convert params to FormData if it's a multipart request
      if (isMultipart && params is Map<String, dynamic>) {
        FormData formData = FormData();
        for (var entry in params.entries) {
          var key = entry.key;
          var value = entry.value;
          if (value is File) {
            // Validate file exists and is not empty before adding.
            final f = File(value.path);
            final exists = f.existsSync();
            int len = 0;
            try {
              len = exists ? f.lengthSync() : 0;
            } catch (_) {
              len = 0;
            }
            log(
              'Adding multipart file for key=$key path=${value.path} exists=$exists length=$len',
            );
            if (!exists || len == 0) {
              log(
                'File for key=$key is missing or empty (exists=$exists, length=$len)',
              );
              return Response(
                requestOptions: RequestOptions(path: url),
                data: {'error': 'File for $key is missing or empty'},
                statusCode: 400,
              );
            }

            formData.files.add(
              MapEntry(
                key,
                await MultipartFile.fromFile(
                  value.path,
                  filename: value.path.split('/').last,
                ),
              ),
            );
          } else if (value is List<File>) {
            for (var file in value) {
              formData.files.add(
                MapEntry(
                  key,
                  await MultipartFile.fromFile(
                    file.path,
                    filename: file.path.split('/').last,
                  ),
                ),
              );
            }
          } else {
            formData.fields.add(MapEntry(key, value.toString()));
          }
        }
        requestData = formData;
      }

      log("------------------- \n📦 Params: ${requestData.toString()}");

      Response response;
      switch (method) {
        case Method.POST:
          response = await _dio.post(url, data: requestData, options: options);
          break;
        case Method.PUT:
          response = await _dio.put(url, data: requestData, options: options);
          break;
        case Method.DELETE:
          response = await _dio.delete(
            url,
            data: requestData,
            options: options,
          );
          break;
        case Method.PATCH:
          response = await _dio.patch(url, data: requestData, options: options);
          break;
        case Method.GET:
          response = await _dio.get(
            url,
            queryParameters: params,
            options: options,
          );
          break;
      }

      log("$url ✅ Response: ${response.statusCode}");
      log("-----------------------------------------------");

      return response;
    } on DioException catch (e) {
      log("❌ API Error: ${e.message}");
      log("📄 Error Response: ${e.response?.data}");
      errortoast("Something Went Wrong");
      return Response(
        requestOptions: RequestOptions(path: url),
        data: {'error': e.response ?? 'Something went wrong'},
        statusCode: e.response?.statusCode ?? 500,
      );
    } on SocketException {
      log("🚫 No Internet Connection");
      errortoast("Failed to connect");
      return Response(
        requestOptions: RequestOptions(path: url),
        data: {'error': 'No Internet Connection'},
        statusCode: 500,
      );
    }
  }

  Future checkConnectivity() async {
    final List<ConnectivityResult> connectivityResult = await (Connectivity()
        .checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return false;
    } else if (connectivityResult.contains(ConnectivityResult.mobile)) {
      return true;
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      return true;
    } else {
      return true;
    }
  }
}
