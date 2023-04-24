import 'package:flutter/material.dart';
import 'package:serve_me/Provider/Registration/ProviderSignUp.dart';
import 'package:serve_me/SplashScreen.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }

}