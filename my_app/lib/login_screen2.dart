import 'package:flutter/material.dart';
import 'package:my_app/admin.dart';
import 'package:my_app/register.dart';
import 'package:my_app/vote.dart';

class login_screen2 extends StatefulWidget{
  @override
  State<login_screen2> createState() => _login_screen2State();
}

class _login_screen2State extends State<login_screen2> {
  final List _options=["ADMINISTRATOR","VOTER"];
  String? _choosen;
  String? user;
  @override

  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        color: Colors.white,

       child: Stack(
         children:[
           Container(
             decoration: const BoxDecoration(
               image: DecorationImage(
                 image: AssetImage('assets/images/login.png'),
                 fit: BoxFit.cover,
               ),
             ),
           ),
       Padding(
         padding: const EdgeInsets.only(top:200,left:50,right: 50),
         child: Column(
           children: [
             Image.asset('assets/images/logo.png'),
             const SizedBox(height: 40,),
             Container(
               padding: const EdgeInsets.only(left:15,right: 15),
               decoration: BoxDecoration(
                 border: Border.all(color:Colors.blue,width:2),
                 borderRadius: BorderRadius.circular(10)
               ),
               child: DropdownButton(
                 hint: const Text("LOGIN AS"),
                 value: _choosen,
                 isExpanded: true,
                 onChanged: (value){
                   setState(() {
                       _choosen=value as String;
                       user=value as String;
                       print("User is a $value");
                     });
                   },
                 items: _options.map((value){
                   return DropdownMenuItem(
                     value:value,
                     child: Text(value),);
                 }).toList(),
               ),
             ),
             const SizedBox(height: 20,),
             TextField(

             decoration: InputDecoration(
                hintText: "Enter Username",
               prefixIcon: const Icon(Icons.person),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10)
               )
             ),
           ),
             const SizedBox(height: 20,),
             TextField(
               obscureText: true,
               decoration: InputDecoration(
                   prefixIcon: const Icon(Icons.key),

                 hintText: "Enter Password",
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10)
                   )
               ),
             ),
             const SizedBox(height: 40,),
             const Padding(
               padding: EdgeInsets.only(left:220),
               child:Text("Not yet Registered as a Voter?",style: TextStyle(fontSize: 12),),
             ),
             Center(
               child: Row(
                 children: [
                   ElevatedButton(
                     child:const Text("LOGIN"),
                      onPressed: (){
                       if(user=="VOTER"){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>vote()));
                       }
                       else if(user=="ADMINISTRATOR"){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>admin()));
                       }

                      },
                   ),
                   const SizedBox(width: 145,),
                   Column(
                     children: [
                       ElevatedButton(
                         child:const Text("REGISTER"),
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
                         },
                       ),
                     ],
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
      ]
      )
      )
    );
  }
}