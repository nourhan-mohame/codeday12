import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:codeday12/loginscreen.dart';
import 'package:flutter/material.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Container(
          height: 550, // Adjust the height as desired
          width: 550, // Adjust the width as desired
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image.asset('assets/splash.jpg'),
          ),
        ),
        nextScreen: loginscreen(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.white,
        duration: 3000,
      ),
    );
  }
}