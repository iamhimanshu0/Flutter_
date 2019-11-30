import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: ProfilePage(),
  debugShowCheckedModeBanner: false,
));

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        title: Text("Himanshu Tripathi",style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: ListView(
       scrollDirection: Axis.vertical,
        shrinkWrap: false,
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.bottomLeft,
            children: <Widget>[

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3.5,

                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/1.jpg",),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Positioned(
                top: 160,
                left: 5,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("images/ht.jpg")
                    ),
                    border: Border.all(color: Colors.black,width: 5)
                  ),
                ),
              ),
              Positioned(
                top: 210,
                right: 10,
                height: 40,
                width: 100,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.green,width: 2)
                  ),
                  child: Center(child: Text("Edit Profile",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),
                ),
              ),

            ],
          ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Himanshu Tripathi", style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,fontSize: 22),),
                  Text("@iam_himanshu0",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),),
                  SizedBox(height: 20,),
                  Text("Machine Learning an Data Science enthusiast\nAndroid Developer and always willing to learn\nand work with new technologies.",
                    style: TextStyle(color: Colors.white,fontSize: 18,),),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.link,color: Colors.grey,size: 25,),
                      SizedBox(width: 10,),
                      Text("himanshutripathi.herokuapp.com",style: TextStyle(
                          color: Colors.green,
                          fontSize: 19
                      ),)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.panorama_fish_eye,color: Colors.grey,size: 25,),
                      SizedBox(width: 10,),
                      Text("Born September 16, 1998",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 19
                      ),)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.calendar_today,color: Colors.grey,size: 25,),
                      SizedBox(width: 10,),
                      Text("Joined April 2016",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 19
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Text("232", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),),
                      SizedBox(width: 10,),
                      Text("Following", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),),
                      SizedBox(width: 20,),
                      Text("3.2M", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),),
                      SizedBox(width: 10,),
                      Text("Followers", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: <Widget>[
                      Text("Tweets",style: TextStyle(color: Colors.green,fontSize: 18),),
                      SizedBox(width: 18,),
                      Text("Tweets & replies",style: TextStyle(color: Colors.grey,fontSize: 18),),
                      SizedBox(width: 18,),
                      Text("Media",style: TextStyle(color: Colors.grey,fontSize: 20),),
                      SizedBox(width: 18,),
                      Text("Likes",style: TextStyle(color: Colors.grey,fontSize: 20),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width,

                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/ht.jpg"),
                              )
                            ),

                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                              children: <Widget>[
                                Text("Himanshu Tripathi",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22
                                ),)
                              ],
                              ),
                              SizedBox(height: 10,),
                              Text("I create UI in flutter. let me know what you think and give your feebbacks",style: TextStyle(
                                color: Colors.white70,
                                fontSize: 17,
                              ),),
                              SizedBox(height: 5,),
                              Text("@flutter @github @datascience",style: TextStyle(
                                color: Colors.green,
                                fontSize: 17,
                              ),),
                              SizedBox(height: 20,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.mode_comment,color: Colors.grey,),
                                  SizedBox(width: 50,),
                                  Icon(Icons.repeat,color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text("2k",style: TextStyle(color: Colors.grey),),
                                  SizedBox(width: 50,),
                                  Icon(Icons.favorite,color: Colors.red,),
                                  SizedBox(width: 10,),
                                  Text("1.6k",style: TextStyle(color: Colors.grey),),
                                ],
                              )
                            ],
                          ),

                        ),
                        SizedBox(height: 20,),
                        ListTile(
                          leading: Container(
                              height: 50,
                              width: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/ht.jpg"),
                              )
                          ),

                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Himanshu Tripathi",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22
                                    ),)
                                ],
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 150,
                                width: 250,

                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/photo.png"),
                                    fit: BoxFit.cover,
                                  )
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.mode_comment,color: Colors.grey,),
                                  SizedBox(width: 50,),
                                  Icon(Icons.repeat,color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text("2k",style: TextStyle(color: Colors.grey),),
                                  SizedBox(width: 50,),
                                  Icon(Icons.favorite,color: Colors.red,),
                                  SizedBox(width: 10,),
                                  Text("1.6k",style: TextStyle(color: Colors.grey),),
                                ],
                              )
                            ],
                          ),

                        )
                      ],
                    ),
                  )
                ],
              ),
          ),

        ],
      ),
    );
  }
}

