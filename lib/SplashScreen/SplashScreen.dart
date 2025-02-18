// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:education/LoginPage/Mobile.dart';
import 'package:flutter/material.dart';



// Import your home page

class SplashScreen extends StatefulWidget {
 
  const SplashScreen( {
    super.key,
     
  });
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the home screen after 10 seconds
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>  CreateAccountScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF), // Adjust the background color
      body: Center(
        child: Image.asset('assets/images/logo.jpeg'), // Your logo image
      ),
    );
  }
}
