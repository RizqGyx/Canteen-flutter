import 'package:flutter/material.dart';
import 'package:projek1/views/Login.dart';
import 'package:projek1/views/Otp.dart';
import 'package:projek1/views/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashScreen(),
        "login": (context) => Login(),
        "otp": (context) => Otp(),
      },
    );
  }
}
