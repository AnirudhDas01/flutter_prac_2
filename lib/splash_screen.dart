import 'dart:async';

import 'package:flutter/material.dart';
import 'package:manage_states/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), disableSplash);
  }

  void disableSplash() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (builder) => MyHomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.blue),
          child: Center(child: Text("Classico")),
        ),
      ),
    );
  }
}
