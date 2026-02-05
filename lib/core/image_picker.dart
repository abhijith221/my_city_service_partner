part of 'core.dart';

class ImagePickerServices {
  Future<XFile?> pickImage() async {
    try {
      final XFile? image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 100, // Start with full quality
      );

      if (image == null) {
        debugPrint('No image selected.');
        return null;
      }

      final File imageFile = File(image.path);
      final int fileSizeInBytes = await imageFile.length();
      final double fileSizeInMB = fileSizeInBytes / (1024 * 1024);
      log('fileSizeInMB: $fileSizeInMB');
      if (fileSizeInMB > 1) {
        // Compress if > 1MB
        final Directory tempDir = await getTemporaryDirectory();
        final String targetPath = path.join(
          tempDir.path,
          'compressed_${path.basename(image.path)}',
        );

        final compressedFile = await FlutterImageCompress.compressAndGetFile(
          image.path,
          targetPath,
          quality: 50, // Adjust this for desired compression
          format: CompressFormat.jpeg,
        );

        if (compressedFile != null) {
          final File compressedimageFile = File(compressedFile.path);
          final int conpressedfileSizeInBytes =
              await compressedimageFile.length();
          final double compressedfileSizeInMB =
              conpressedfileSizeInBytes / (1024 * 1024);
          final compressedSize = await compressedFile.length();
          debugPrint(
            'Compressed size: ${(compressedSize / (1024 * 1024)).toStringAsFixed(2)} MB',
          );
          log('Compressed size: $compressedfileSizeInMB MB');
          return XFile(compressedFile.path);
        } else {
          debugPrint('Compression failed.');
          return image;
        }
      }

      // No need to compress
      return image;
    } catch (e) {
      debugPrint('Error picking image: $e');
      return null;
    }
  }

  Future<List<String>?> pickMultipleImages({int? limit}) async {
    try {
      final List<XFile> images = await ImagePicker().pickMultiImage(
        limit: limit,
      );

      if (images.isEmpty) {
        debugPrint('No images selected.');
        return null;
      }

      debugPrint('Picked ${images.length} images');

      List<String> processedImagePaths = [];
      final Directory tempDir = await getTemporaryDirectory();

      for (int i = 0; i < images.length; i++) {
        final XFile image = images[i];
        final File imageFile = File(image.path);
        final int fileSizeInBytes = await imageFile.length();
        final double fileSizeInMB = fileSizeInBytes / (1024 * 1024);

        log('Image ${i + 1} original size: $fileSizeInMB MB');

        if (fileSizeInMB > 1) {
          // Compress if > 1MB
          final String targetPath = path.join(
            tempDir.path,
            'compressed_${i}_${path.basename(image.path)}',
          );

          final compressedFile = await FlutterImageCompress.compressAndGetFile(
            image.path,
            targetPath,
            quality: 50, // Adjust this for desired compression
            format: CompressFormat.jpeg,
          );

          if (compressedFile != null) {
            final File compressedImageFile = File(compressedFile.path);
            final int compressedFileSizeInBytes =
                await compressedImageFile.length();
            final double compressedFileSizeInMB =
                compressedFileSizeInBytes / (1024 * 1024);

            debugPrint(
              'Image ${i + 1} compressed size: ${compressedFileSizeInMB.toStringAsFixed(2)} MB',
            );
            log('Image ${i + 1} compressed size: $compressedFileSizeInMB MB');

            processedImagePaths.add(compressedFile.path);
          } else {
            debugPrint(
              'Compression failed for image ${i + 1}, using original.',
            );
            processedImagePaths.add(image.path);
          }
        } else {
          // No need to compress
          debugPrint(
            'Image ${i + 1} is already under 1MB, no compression needed.',
          );
          processedImagePaths.add(image.path);
        }
      }

      debugPrint('Processed images paths: $processedImagePaths');
      return processedImagePaths;
    } catch (e) {
      debugPrint('Error picking images: $e');
      return null;
    }
  }
}

Future? pickVideo() async {
  try {
    final XFile? video = await ImagePicker().pickVideo(
      source: ImageSource.gallery,
      maxDuration: const Duration(seconds: 30),
      preferredCameraDevice: CameraDevice.front,
    );
    if (video != null) {
      debugPrint('Picked video path: ${video.path}');
      return video;

      // You can also use the video file for further processing
    } else {
      debugPrint('No video selected.');
    }
  } catch (e) {
    debugPrint('Error picking video: $e');
    rethrow;
  }
}

class AppFilePicker {
  static const int maxFileSizeBytes = 2 * 1024 * 1024; // 2MB

  Future<File?> pickFile() async {
    final result = await fp.FilePicker.platform.pickFiles(
      type: fp.FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result == null || result.files.single.path == null) return null;

    final file = File(result.files.single.path!);
    final fileSize = await file.length();
    if (fileSize > maxFileSizeBytes) {
      errortoast("Please select a PDF file less than 2MB.");
      return null;
    }
    return file;
  }

  Future<List<File>?> pickMultipleFiles({int? limit}) async {
    final result = await fp.FilePicker.platform.pickFiles(
      type: fp.FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: true,
      withData: true,
    );
    if (result == null || result.files.isEmpty) return null;

    final files = result.files.map((file) => File(file.path!)).toList();
    return files;
  }
}
