import 'package:flutter/material.dart';
import 'package:my_app/Login_screen2.dart';
import 'package:my_app/button.dart';

class admin extends StatefulWidget{
  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  bool show=false;
  List admin_oper=["UPDATE","DELETE"];
  String? operation;
  var arrNames=['Atharva Khairnar','Aditya Keskar'];
  @override
  Widget build(BuildContext context)=>Scaffold(
        appBar: AppBar(
          title: const Text('ADMINISTRATOR'),
          backgroundColor: Colors.blueAccent,
          leading: Container(
            child:IconButton(
              icon: const Icon(
                Icons.logout,
              ),
              onPressed: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>login_screen2(),
                    ));
              },
            ),
          ),
        ),
        body:Container(
          child: Column(
            children: [
              Visibility(
                visible: !show,
                child: Expanded(
                  child: ListView.separated(itemBuilder: (context,index){
                    return ListTile(
                      leading: const Icon(Icons.person,size: 50,),
                      title: Text(arrNames[index]),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete,
                        ),
                        onPressed: (){
                          setState(() {
                            arrNames.removeAt(index);
                            print(arrNames);
                          });
                        },
                      ),

                    );
                  },
                      separatorBuilder: (context,index){
                        return const Divider(height:50,thickness: 1,);
                      },
                      itemCount: arrNames.length),
                ),
              ),
              Visibility(
                visible: !show,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: ElevatedButton(
                    style: buttonPrimary,
                    child:const Text("ADD CANDIDATE"),
                    onPressed: (){
                      setState(() {
                        show=true;
                      });
                    },
                  ),
                ),
              ),
              Visibility(
                visible: show,
                child: Container(
                  padding: EdgeInsets.only(top:50,left:20,right:20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Candidate's Name",
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
                            hintText: "Enter Party Name",
                            prefixIcon: Icon(Icons.key),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                      SizedBox(height: 40,),
                      ElevatedButton(
                        style: buttonPrimary,
                        child:Text("ADD CANDIDATE"),
                        onPressed: (){
                          setState(() {
                            show=false;
                          });
                      },
                    ),
                 ],
                ),
            ),
              ),

            ],
          ),
        )
  );

}
