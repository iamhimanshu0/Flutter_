import 'package:flutter/material.dart';
import 'package:ui_app/login.dart';
import 'package:ui_app/regsiter.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
           Image.asset("images/2.png"),
           SizedBox(height: 10),
           Text("Streaming Singles", 
           style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
           ),
           SizedBox(height: 5),
           Text("Flirt And Meet New People", 
           style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),
           ),
           SizedBox(height: 50),
          Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
                  },
                    child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text("Login",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20), 
                      textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> RegisterPage(),
                    ));
                  },
                    child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text("Register",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20), 
                      textAlign: TextAlign.center),
                    ),
                  ),
                ),
              )
            ],
          )
          ],
        ),
      ),
      
    );
  }
}
