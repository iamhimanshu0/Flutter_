import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Parks",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    Icon(Icons.search,color: Colors.white,size: 30,)
                  ],
                ),
              ),
              SizedBox(height: 20),
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    width: 500,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("images/img.jpg"),
                        fit: BoxFit.cover,

                      )
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                      left: 30,
                      child: Text("Golden", style: TextStyle(fontSize: 50,color: Colors.white),)),
                  Positioned(
                      bottom: 15,
                      left: 30,
                      child:Row(
                        children: <Widget>[
                          Icon(Icons.location_on,color: Colors.white,size: 30,),
                          SizedBox(width: 15,),
                          Text("Uttarakhand Nainital",style: TextStyle(color: Colors.white,fontSize: 22),),
                          SizedBox(width: 25,),
                          Text("2660 Kms",style: TextStyle(color: Colors.black87,fontSize: 22,fontWeight: FontWeight.bold),)
                        ],
                      )),

                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    color: Colors.yellow,
                  ),
                  child: Center(child: Text("Wildlife Sancturary",textAlign: TextAlign.center,style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 25,

                  ),)),
                ),
              ),
              SizedBox(height: 20),
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    width: 500,
                    height: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage("images/img_2.jpeg"),
                          fit: BoxFit.cover,

                        )
                    ),
                  ),
                  Positioned(
                      bottom: 50,
                      left: 30,
                      child: Text("Tiger", style: TextStyle(fontSize: 50,color: Colors.white),)),
                  Positioned(
                      bottom: 15,
                      left: 30,
                      child:Row(
                        children: <Widget>[
                          Icon(Icons.location_on,color: Colors.white,size: 30,),
                          SizedBox(width: 15,),
                          Text("Uttarakhand Nainital",style: TextStyle(color: Colors.white,fontSize: 22),),
                          SizedBox(width: 25,),
                          Text("2660 Kms",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)
                        ],
                      )),

                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    color: Colors.yellow,
                  ),
                  child: Center(child: Text("Wildlife Sancturary",textAlign: TextAlign.center,style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 25,

                  ),)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
