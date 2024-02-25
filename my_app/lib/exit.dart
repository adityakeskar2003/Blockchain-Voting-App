import 'package:flutter/material.dart';
import 'package:my_app/Login_screen2.dart';
import 'dart:async';

class exit extends StatefulWidget{
  @override
  State<exit> createState() => _exitState();
}

class _exitState extends State<exit> {
    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      Timer(Duration(seconds: 5),(){
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context)=>login_screen2(),
            ));
      }
      );
    }
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          child: Center(child: Text("Thanks for Voting!!",style: TextStyle(fontSize: 25),)),
        ),
      );
    }
}