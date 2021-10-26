import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quotation/constants/constants.dart';
import 'package:quotation/screens/splash_screen_2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);
    super.initState();
    _navigatePage();
  }

  _navigatePage() async {
    await Future.delayed(Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SplashScreenTwo()));
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(splashImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
