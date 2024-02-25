
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/Login_screen2.dart';
import 'package:my_app/main.dart';

class Splash_screen extends StatefulWidget{
  @override
  State<Splash_screen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash_screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=>login_screen2(),
          ));
    }
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children:[ Container(
          color: Colors.blueAccent,
        ),
          Center(child: Image.asset('assets/images/logo.png')),
      ]
      ),
    );
  }
}
