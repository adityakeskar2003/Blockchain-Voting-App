import 'package:flutter/material.dart';
import 'package:my_app/exit.dart';
import 'package:my_app/login_screen2.dart';


class vote extends StatefulWidget{
  @override
  State<vote> createState() => _voteState();
}

class _voteState extends State<vote> {
  bool showFab=false;
  String? selected;
  int index1=-1;
  var arrNames=['Atharva Khairnar','Aditya Keskar'];
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title:const Text('VOTE NOW'),
          backgroundColor: Colors.blueAccent,
          leading: Container(
            child:IconButton(
              icon: const Icon(
                Icons.logout,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>login_screen2()));
              },
            ),
          ),
        ),
        body:Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(itemBuilder: (context,index){
                  return ListTile(
                    leading: Icon(Icons.person,size: 100,),
                    title: Text(arrNames[index]),
                    subtitle: Text("Description"),
                    trailing: Padding(
                      padding: const EdgeInsets.only(top:30),
                      child: Radio(
                        value: arrNames[index],
                        groupValue: selected,
                        onChanged: (value){
                          setState(() {
                            index1=index;
                            selected=value.toString();
                            showFab=true;
                          });
                        },
                      ),
                    ),
                  );
                },
                    separatorBuilder: (context,index){
                      return Divider(height:100,thickness: 1,);
                    },
                    itemCount: arrNames.length),
              ),
               Visibility(
                  visible: showFab,
                 child: Padding(
                   padding: const EdgeInsets.only(bottom: 100),
                   child: ElevatedButton(
                       onPressed: (){
                         print(arrNames[index1]);
                         Navigator.pushReplacement(
                             context,
                             MaterialPageRoute(

                               builder: (context)=>exit(),
                             ));
                       },
                       child: Text("VOTE"),

                   ),
                 ),
               )
            ],
          ),
        )
    );
  }


  }

