import 'dart:async';
import 'package:flutter/material.dart';
import 'package:portfolio_ui/main.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  // color: Colors.blueAccent,
                  image: DecorationImage(
                      image: AssetImage("images/p_2.png"), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
              child: Text(
            "Himanshu Tripathi",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33, right: 15),
            child: Center(
                child: Text(
              "Machine Learning And Data Science Enthusiastic",
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          SizedBox(height: 30),
          CircularProgressIndicator(
            backgroundColor: Colors.yellow,
          )
        ],
      ),
    );
  }
}
