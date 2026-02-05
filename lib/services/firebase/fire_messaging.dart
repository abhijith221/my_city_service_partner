import 'dart:developer';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:my_city_services/services/services.dart';

class FireBaseMessaging {
  Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    await Firebase.initializeApp();
  }

  ///this function will request for permission and then generate a fcm token
  ///if the permission is already granted then it will just generate a fcm token
  ///and return the token
  // Future<void> createFCMToken() async {
  //   // Request permissions for iOS, Android permissions are handled in manifest
  //   if (Platform.isIOS) {
  //     debugPrint('ios getting apn token');
  //     NotificationSettings settings =
  //         await FirebaseMessaging.instance.requestPermission(
  //       alert: true,
  //       badge: true,
  //       sound: true,
  //       provisional: false,
  //     );

  //     if (settings.authorizationStatus != AuthorizationStatus.authorized) {
  //       return;
  //     }
  //     String? apnsToken = await FirebaseMessaging.instance.getAPNSToken();
  //     log('APNS token is $apnsToken');
  //     if (apnsToken != null) {
  //       await SharedPrefsHelper.saveFCMToken(apnsToken);
  //     }
  //   }

  //   // Get FCM token for android
  //   if (Platform.isAndroid) {
  //     String? token = await FirebaseMessaging.instance.getToken();
  //     log('FCM token is $token');
  //     if (token != null) {
  //       await SharedPrefsHelper.saveFCMToken(token);
  //     }
  //   }
  // }

  Future<void> requestNotificationPermission() async {
    PermissionStatus status = await Permission.notification.status;

    if (status.isDenied) {
      status = await Permission.notification.request();

      if (status.isGranted) {
        // Permission granted, proceed as needed
      } else if (status.isDenied) {
        if (!Platform.isIOS) {
          openAppSettings();
        }
      } else if (status.isPermanentlyDenied && !Platform.isIOS) {
        openAppSettings();
      }
    } else if (status.isGranted) {
      // Permission already granted
    }
  }

  Future<String?> createFCMToken() async {
    log("getFCMToken started", name: "FCM");

    if (Platform.isIOS) {
      try {
        NotificationSettings settings = await FirebaseMessaging.instance
            .requestPermission(alert: true, badge: true, sound: true);

        log("Permission status: ${settings.authorizationStatus}", name: "FCM");

        if (settings.authorizationStatus == AuthorizationStatus.authorized ||
            settings.authorizationStatus == AuthorizationStatus.provisional) {
          String? apnsToken;
          for (int i = 0; i < 3; i++) {
            apnsToken = await FirebaseMessaging.instance.getAPNSToken();
            if (apnsToken == null) {
              log(
                "Attempt ${i + 1} - Failed to retrieve APNS token. Ensure Push Notifications and Background Modes are enabled in Xcode.",
                name: "FCM",
              );
            } else {
              log("Attempt ${i + 1} - APNS token: $apnsToken", name: "FCM");
            }

            if (apnsToken != null) break;

            await Future.delayed(const Duration(seconds: 2));
          }

          if (apnsToken != null) {
            final token = await FirebaseMessaging.instance.getToken();
            log("FCM token obtained: ${token ?? 'null'}", name: "FCM");

            if (token != null) {
              await SharedPrefsServices.saveFCMToken(token);
            }

            return token;
          } else {
            log(
              "Failed to get APNS token after multiple attempts",
              name: "FCM",
            );
            return null;
          }
        } else {
          log("Notification permissions not granted", name: "FCM");
          return null;
        }
      } catch (e) {
        log("Error getting FCM token: $e", name: "FCM");
        return null;
      }
    } else {
      try {
        final token = await FirebaseMessaging.instance.getToken();
        log("FCM token obtained: ${token ?? 'null'}", name: "FCM");

        if (token != null) {
          await SharedPrefsServices.saveFCMToken(token);
        }

        return token;
      } catch (e) {
        log("Error getting FCM token: $e", name: "FCM");
        return null;
      }
    }
  }

  Future<void> revokeFCMTokenOnLogout() async {
    try {
      await FirebaseMessaging.instance.deleteToken();
      log('FCM token deleted successfully');
    } catch (e) {
      log('Error deleting FCM token: $e');
    }
  }
}
