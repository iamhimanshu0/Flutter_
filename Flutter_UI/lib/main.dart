import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:himanshu/pages/instagram.dart';
import 'package:himanshu/pages/facebook.dart';
import 'package:himanshu/pages/linkedin.dart';
import 'package:himanshu/pages/twitter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(
  MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryIconTheme: IconThemeData(color: Colors.black),
    ),
    initialRoute: '/home',
    routes: {
      '/home':(context)=>Home(),
      '/facebook':(context)=>FacebookHome(),
      '/instagram':(context)=>InstagramHome(),
      '/twitter':(context)=>TwitterHome(),
      '/linkedin':(context)=>LinkedinHome(),
    },
  ),
);

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.white,
    centerTitle:true,
    elevation: 1.0,
    leading: Icon(Icons.verified_user,color:Colors.black),
    title: SizedBox(
      height: 20.0,
      child: 
      Text("HIMANSHU",
      style: TextStyle(
        color: Colors.black
      )),
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send,color: Colors.black,),
      ),
    ],
    ),
   body: Padding(
     padding: const EdgeInsets.all(20),
     child: Column(
       children: <Widget>[
         Wrap(
           children: <Widget>[
             Text("Just start learning flutter 2 days back. And fall in love with flutter. So i tried to make clone of Facebook, Instagram and Twitter Profile page UI only. And this is what i able to make. Hope you like and gives your feedbacks..",
             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
           ],
         ),
         SizedBox(height: 50),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text("Facebook",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
             FlatButton(
               onPressed: (){
                 Navigator.pushNamed(context, '/facebook');
               },
               child: Text("Open",style: TextStyle(color:Colors.white),),
               color: Colors.lightBlue[800],
             ),
           ],
         ),
        SizedBox(height: 30.0),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text("Instagram",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
             FlatButton(
               onPressed: (){
                 Navigator.pushNamed(context, '/instagram');
               },
               child: Text("Open",style: TextStyle(color:Colors.white)),
               color: Colors.redAccent,
             ),
           ],
         ),
        SizedBox(height: 30.0),
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text("Twitter",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
             FlatButton(
               onPressed: (){
                 Navigator.pushNamed(context, '/twitter');
               },
               child: Text("Open",style: TextStyle(color:Colors.white)),
               color: Colors.lightBlue[300],
             ),
           ],
         ),
         SizedBox(height: 160),
         Text("GET IN TOUCH",
         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
         ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
           IconButton(
             onPressed: () async{
              launch('https://www.facebook.com/iamhimanshu0');
             },
            icon: Icon(FontAwesomeIcons.facebook),
           ),
            IconButton(
            onPressed: () async{
              launch('https://instagram.com/iamhimanshu0/');
             },
            icon: Icon(FontAwesomeIcons.instagram),
           ),
            IconButton(
             onPressed: () async{
              launch('https://twitter.com/iam_himanshu0');
             },
            icon: Icon(FontAwesomeIcons.twitter),
           ),
            IconButton(
             onPressed: () async{
              launch('https://github.com/iamhimanshu0');
             },
            icon: Icon(FontAwesomeIcons.github),
           ),
            IconButton(
            onPressed: () async{
              launch('https://linkedin.com/in/iamhimanshu0/');
             },
            icon: Icon(FontAwesomeIcons.linkedinIn),
           ),
          ],
        ),
       ],
     ),
   ),
    );
  }
}
