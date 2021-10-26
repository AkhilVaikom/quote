import 'package:flutter/material.dart';
import 'package:quotation/screens/splash_screen.dart';

void main() => runApp(const QuotationApp());

class QuotationApp extends StatelessWidget {
  const QuotationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white70,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
