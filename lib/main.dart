import 'package:flutter/material.dart';
import 'package:serve_me/SplashScreen.dart';



void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFF99718),
        focusColor: Color(0xFFF99718),
      ),
      home: Splash(),
    );
  }

}