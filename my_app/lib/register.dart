

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Login_screen2.dart';
import 'package:my_app/button.dart';

class register extends StatefulWidget{
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool isvisible=false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        child:Stack(
            children:[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/login.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:250,left:50,right: 50),
                child: Column(
                  children: [
                    Visibility(
                      visible: !isvisible,
                      child: Container(
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter Voter ID",
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter Constituency",
                                  prefixIcon: Icon(Icons.home),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter Ethereum Account Key",
                                  prefixIcon: Icon(Icons.key),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )
                              ),
                            ),
                            SizedBox(height: 40,),
                            ElevatedButton(
                              style: buttonPrimary,
                              child:Text("Create Account"),
                              onPressed: (){
                                setState(() {
                                  isvisible=true;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),
                    Visibility(
                      visible: isvisible,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 200),
                        child: Column(
                          children: [
                            Container(
                              height: 350,
                              width: 500,
                              child: Card(
                                color: Colors.blueAccent.withOpacity(0.7),
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(9),
                                  child: Text("    Please Note ur Keys",style: TextStyle(fontSize: 25,color: Colors.white),),
                                ),
                              ),
                            ),
                            SizedBox(height: 40,),
                            ElevatedButton(
                              style: buttonPrimary,
                                onPressed: (){
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context)=>login_screen2(),
                                      ));
                                },
                                child: Text("Back To Login"))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]
          )
      )
    );
  }
}