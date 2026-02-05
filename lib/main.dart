import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_city_services/core/core.dart';
import 'package:sizer/sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/services/razorpay_service.dart';
import 'app/modules/splash/views/splash_view.dart';
import 'app/modules/home/views/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await SharedPreferences.getInstance();
  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Constants.width = MediaQuery.sizeOf(context).width;
          Constants.height = MediaQuery.sizeOf(context).height;
        });
        return MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: appTheme(),
          darkTheme: appTheme(),
          themeMode: ThemeMode.dark,
          home: const SplashView(),
        );
      },
    );
  }
}
