import 'package:flutter/material.dart';
import 'package:portfolio_ui/education.dart';
import 'package:portfolio_ui/home.dart';
import 'package:portfolio_ui/profile.dart';
import 'package:portfolio_ui/projects.dart';
import 'package:portfolio_ui/splash.dart';

void main() => runApp(MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    Education(),
    Projects(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        // backgroundColor: Colors.lightBlue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_attributes),
            title: Text("Education"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text("Projects"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text("Porfile"),
          ),
        ],
      ),
    );
  }
}
