import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ws_expance_app/pages/LoginScreen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to the next screen after a delay
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Spendo',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontStyle: FontStyle.italic
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your Spending Companion',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

