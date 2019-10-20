import 'package:flutter/material.dart';
import 'package:ui_app/login.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
     ),
     body: Column(
       children: <Widget>[
          Center(
           child:  Container(
           height: 150,
           child: Image.asset("images/2.png"),
         ),
         ),
          Text("Create An Account", 
           style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),
           ),
         SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
          child: TextField(
             decoration: InputDecoration(
              labelText: "Name",
              labelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey)),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
          child: TextField(
             decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey)),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
          child: TextField(
             decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey)),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
          child: TextField(
             decoration: InputDecoration(
              labelText: "City",
              labelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey)),
          ),
        ),
      SizedBox(height: 40),
         Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.pink[400],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text("Register",style: TextStyle(fontSize: 25,color: Colors.white),textAlign: TextAlign.center,),
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 30, 0),
          child: Row(
            children: <Widget>[
              Text("Already Have An Account ?",style: TextStyle(color: Colors.grey[600],fontSize: 15),),
              SizedBox(width: 10),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> LoginPage(),
                  ));
                },
                child: Text("Log In",style: TextStyle(color: Colors.pink,fontSize: 15),
                )),
            ],
          ),
        ),

        
       ],
     )
    ); 
  }
}