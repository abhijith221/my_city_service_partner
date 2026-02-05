import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_city_services/app/modules/home/views/home_view.dart';
import 'package:my_city_services/core/core.dart';
import 'package:sizer/sizer.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 1200), () {
      // Navigate to HomeView after short delay
      Navigator.of(navigatorKey.currentContext ?? context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeView()),
      );
    });

    return Scaffold(
      backgroundColor: AppColors.primaryShade6,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 150,
          height: 150,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
