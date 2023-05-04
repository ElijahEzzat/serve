import 'dart:async';
import 'package:flutter/material.dart';
import 'package:serve_me/AccountType.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => AccountType()));
    });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF99718),Color(0xFFFF7508)]),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: AssetImage('assets/images/logocircle.png'),
              height: 300,
              width: 300,
            ),

            SizedBox(
              height: 50.0,
            ),

            Text(
                'Always at your service',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 100.0,
            ),

            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    ),
  );
  }}