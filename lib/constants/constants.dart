import 'package:flutter/material.dart';

String appBarImage = "assets/appbar.png";
String appBarsplashImage = "assets/splash2.png";
String splashImage = "assets/splash.png";

TextStyle headTextStyle = const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold);

enum textField{
  name,
  number,
  email,
  password,
}        

bool isEmail(String string) {
  // Null or empty string is invalid
  if (string == null || string.isEmpty) {
    return false;
  }

  const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  final regExp = RegExp(pattern);

  if (!regExp.hasMatch(string)) {
    return false;
  }
  return true;
}

