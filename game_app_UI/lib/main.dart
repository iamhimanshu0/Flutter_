import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
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
      backgroundColor: Colors.grey[100],
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250,
                color: Colors.grey[100],
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 35, 15, 10),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Colors.black),
                          contentPadding: EdgeInsets.only(left: 15.0,top: 15.0),
                          hintText: "Search for apps & games",
                          hintStyle: TextStyle(color:Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        border: Border(left: BorderSide(
                          color: Colors.orange,
                          style: BorderStyle.solid,
                          width: 5.0,
                        )
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('POPULAR GAMES', style: TextStyle(
                              fontFamily: 'Timesroman',
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text('THIS WEEK', style: TextStyle(
                              fontFamily: 'Timesroman',
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.0,left: 15.0),
                    height: 125.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _gameCard("images/5.jpg"),
                        SizedBox(width: 10.0,),
                        _gameCard("images/3.jpg"),
                        SizedBox(width: 10.0,),
                        _gameCard("images/1.jpg"),
                        SizedBox(width: 10.0,),
                    ],
                    ),
                  ),
                ],
              )
            ],
          ),
        SizedBox(height: 15.0),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            "October 24",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            "Today's Hot",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10,),
        Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 12.0,right: 12.0),
              child: Container(
                height: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("images/1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: BackdropFilter(
                //   filter: ImageFilter.blur(sigmaX: 1.5,sigmaY: 1.5),
                //   child: Container(
                //     decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                //   ),
                // ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 200,left: 60),
              child: Column(
                children: <Widget>[
                  Text("BEST OF",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                   Text("THE DAY",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 10),
                  Container(
                    height: 3,
                    width: 50.0,
                    color: Colors.orange,
                  )
                ],
              ),
            )
          ],
        ),
        ],
      ),
    );
  }

  Widget _gameCard(String img){
    return Container(
          height: 300.0,
          width: 250.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
           ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.cover
                    ),
                   ),
                    height:300 ,
                    width: 240,
                ),
              ),
            
            ],
          ),
          
        );
                     
  }
}