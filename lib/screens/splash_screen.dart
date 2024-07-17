import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodpanda_ui/screens/home_screen.dart';
import 'package:foodpanda_ui/screens/location_access_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LocationAccessScreen(),
        ),
      );
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (context) => HomeScreen(),
      //   ),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF2B85),
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          scale: 3,
        ),
      ),
    );
  }
}
