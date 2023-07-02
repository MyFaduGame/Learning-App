//Flutter imports
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trialapplication/app/screens/home_scree.dart';
import 'package:trialapplication/app/theme/app_string.dart';
import 'package:trialapplication/app/theme/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
          alignment: Alignment.center,
          child: Text(
            SplashString().splashText,
            style: themeFonts,
            textAlign: TextAlign.center,
          )),
    );
  }
}
