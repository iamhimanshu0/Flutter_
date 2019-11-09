import 'package:facebook_clone/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    ));

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(59, 89, 152, 1),
      body: screen(context),
    );
  }
}

Widget screen(BuildContext context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 0),
            child: Center(
              child: Image.asset(
                "images/fb_icon.jpg",
                width: 300,
                height: 300,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              contentPadding: EdgeInsets.only(left: 15.0, bottom: 10),
              hintText: "Email or Phone",
              hintStyle: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextFormField(
            decoration: InputDecoration(
              focusColor: Colors.white,
              contentPadding: EdgeInsets.only(left: 15.0, bottom: 10),
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.white, fontSize: 17),
            ),
            obscureText: true,
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
            child: Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.blueAccent[100],
              ),
              child: Center(
                child: Text("LOG IN",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              ),
            ),
          ),
          SizedBox(height: 120),
          Text(
            "Sign Up For Facebook",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 20),
          Text(
            "Forgot Password ?",
            style: TextStyle(color: Colors.white70, fontSize: 18),
          ),
        ],
      ),
    ),
  );
}
