import 'package:flutter/material.dart';
import 'package:my_city_services/core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_city_services/services/services.dart';

void saveToken(String token) async {
  await SharedPrefsServices.setToken(token);
  UserData.accesstoken = token;
}

void logOut(BuildContext context) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  UserData.accesstoken = '';
}
