import 'dart:async';
import 'package:assistme/MainScreen/LandingPage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LandingPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       color:  Color(0xFF3D3D71),
       child:  Padding(
         padding: const EdgeInsets.only(left:70.0,right: 70.0),
         child: Image.asset(
            'assets/images/qassist_logo.png',
      //fit: BoxFit.contain,
         ),),);
  }
}