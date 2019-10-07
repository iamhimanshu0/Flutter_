import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.black),
        actions: <Widget>[
         Padding(
           padding: const EdgeInsets.only(right: 10),
           child: Icon(Icons.menu,
           color: Colors.black),
         ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0,-.4),
                height: 100,
                color: Colors.white,
                child: Text(
                  "Let's Connect",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 90, 25, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey,
                    ),
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 25, 5, 5),
                          child: Text(
                            "FRIENDS",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25, 45, 5, 25),
                          child: Text(
                            "195",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 80),
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Find More",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.only(right: 25,left:25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY FRIENDS',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0
                  ),
                ),
                 Text(
                  'VIEW YOUR PROFILE',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
                _buildCard('himanshu', 'Available', 1),
                _buildCard('iamhimanshu', 'Away', 2),
                _buildCard('himanshu', 'Away', 3),
                _buildCard('gaurav', 'Available', 4),
                _buildCard('neil', 'Available', 5),
                 _buildCard('himanshu', 'Away', 6)
            ],
          ),
        ],
      ),
    );

  }

  Widget _buildCard(String name, String status,int cardIndex)
  {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Stack(
            children: <Widget>[
               SizedBox(height: 12.0),
            Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.green,
              image: DecorationImage(
                image: AssetImage('images/ht.jpg')
              ),
            ),
          ),
           Container(
            margin: EdgeInsets.only(left: 45.0),
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: status == 'Away'? Colors.amber:Colors.green,
              border: Border.all(
                color: Colors.white,
                style: BorderStyle.solid,
                width: 2.0,
              )
            ),
          ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
           SizedBox(height: 8),
          Text(
            status,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 12.0,
            ),
          ),
          SizedBox(height: 8),
          Expanded(
           child: Container(
             width: 175,
             decoration: BoxDecoration(
               color: status == "Away"?Colors.grey:
               Colors.orangeAccent,
               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(10),
                 bottomRight: Radius.circular(10),
               )
             ),
             child: Center(
               child:
               Text('Say Hi !',
               style: TextStyle(color: Colors.white),),
             ),
           ),
          )
        ],
      ),
      margin: cardIndex.isEven?EdgeInsets.fromLTRB(10.0, 0, 25.0,10.0):
      EdgeInsets.fromLTRB(25.0, 0, 5.0,10.0)
    );
  }
}
