import 'package:flutter/material.dart';
import 'package:ui_app/regsiter.dart';

class LoginPage extends StatelessWidget {
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
          Text("Flirt And Meet New People", 
           style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),
           ),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: TextField(
             decoration: InputDecoration(
              labelText: "Username",
              labelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey)),
          ),
        ),
         SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: TextField(
             decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey)),
          ),
        ),
        SizedBox(height: 40),
        Container(
          height: 60,
          width: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueAccent,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text("Login",style: TextStyle(fontSize: 25,color: Colors.white),textAlign: TextAlign.center,),
          ),
        ),
        SizedBox(height: 10),
        Text("Forget Password ?",style: TextStyle(color: Colors.grey[600],fontSize: 15),),
        SizedBox(height: 70),
        Padding(
          padding: const EdgeInsets.fromLTRB(15,10,15,0),
          child: Row(
            children: <Widget>[
              Text("Don't Have an Account ?",style: TextStyle(fontSize: 17,color: Colors.grey),),
              SizedBox(width: 40),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: Colors.pink[400],
                  ),
                  child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ));
                        },
                            child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Text("Create",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                    ),
                  ),
              ),
            ],
          ),
        ),
       ],
     ),
    );
  }
}