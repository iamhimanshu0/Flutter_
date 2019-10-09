import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      initialRoute: '/home',
      routes: {
        '/home':(context)=>MyHomePage(),
       '/signup':(context)=> SignUp(),
    },
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                  child: Text(
                    'make',
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 175, 0, 0),
                  child: Text(
                    'friends',
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(268, 175, 0, 0),
                  child: Text(
                    '.',
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35,left: 25,right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: "EMAIL",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                 TextField(
                  decoration: InputDecoration(
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1,0),
                  padding: EdgeInsets.only(top: 15,left: 20.0),
                  child: InkWell(
                    child: Text('Forgot Password',
                    style: TextStyle(
                      color:Colors.orange,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                    ),
                    ),
                  ),
                ),
                 SizedBox(height: 40),
                Container(
                  height: 40,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.orangeAccent,
                    color: Colors.orange,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){},
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),   
                  ),
                ),
                  SizedBox(height:20),
                  Container(
                    height: 40,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Icon(FontAwesomeIcons.facebookF),
                          ),
                          SizedBox(width: 10),
                          Center(
                            child: Text("Log in With Facebook",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
                ),
                ),
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Need An Account ?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.orange
                        ),
                    ),
             SizedBox(width: 5),
             InkWell(
               onTap: () {
                 Navigator.of(context).pushNamed('/signup');
               },
               child: Text('Register',
               style:TextStyle(
                 color:Colors.black,
                 fontWeight: FontWeight.bold,
                 fontSize: 18,
                 decoration: TextDecoration.underline
               ),),
             ),
           ],
         ),
        ],
      ),
    );
  }
}
