import 'package:flutter/material.dart';

class GameDetail extends StatefulWidget {
  @override
  _GameDetailState createState() => _GameDetailState();
}

class _GameDetailState extends State<GameDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: <Widget>[
                Icon(Icons.search, color: Colors.black),
                SizedBox(width: 10),
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage("images/codlogo.png"),
                            fit: BoxFit.cover),
                      ),
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Call Of Duty:\nMobile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        SizedBox(height: 5),
                        Text("Activision Publishing, Inc.",
                            style: TextStyle(
                              color: Colors.green[900],
                            )),
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            Text("Contains ads",
                                style: TextStyle(
                                  color: Colors.grey[500],
                                )),
                            SizedBox(width: 15),
                            Text("In-app purchases ",
                                style: TextStyle(
                                  color: Colors.grey[500],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "4.7 *",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text("4M reviews"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.file_download,
                            color: Colors.black,
                          ),
                          Text("1.1 GB"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: <Widget>[
                          Text(
                            "16+",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text("Rated for 16+"),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: <Widget>[
                          Text(
                            "Download",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text("50M+"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 50,
                  width: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Install",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 180.0,
              // color: Colors.black,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _topSection("images/cod_2.png"),
                  SizedBox(width: 3),
                  _topSection("images/cod.jpg"),
                  SizedBox(width: 3),
                  _topSection("images/cod_2.png"),
                  SizedBox(width: 3),
                  _topSection("images/cod_1.jpg"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "About this game",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Battel Royal, Fast 5V5 & Zombies Survival",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                SizedBox(height: 20),
                Text("Rate this app",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 5,
                ),
                Text("Tell others what you think",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Write a Review",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Ratings and reviews",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "4.7",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 20,
                            ),
                            Icon(
                              Icons.star_half,
                              color: Colors.black,
                              size: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("4,355,242"),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("5"),
                            Icon(
                              Icons.star,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("2,458,78"),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text("4"),
                            Icon(
                              Icons.star,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("1,458,78"),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text("3"),
                            Icon(
                              Icons.star,
                              size: 20,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text("1,848,8"),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text("2"),
                            Icon(
                              Icons.star,
                              size: 20,
                            ),
                            SizedBox(
                              width: 37,
                            ),
                            Text("500"),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text("1"),
                            Icon(
                              Icons.star,
                              size: 20,
                            ),
                            SizedBox(
                              width: 37,
                            ),
                            Text("100"),
                          ],
                        ),
                      ],
                    ),
                    
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Top positive Review",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(Icons.more_vert),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                         Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            image: DecorationImage(image: AssetImage("images/ht.jpg"), fit: BoxFit.cover),
                          ),
                          height: 60,
                          width: 60,
                     ),
                     SizedBox(width: 20),
                     Text("Himanshu Tripathi",style: TextStyle(fontWeight: FontWeight.bold),),
                     SizedBox(width: 100,),
                     Icon(Icons.more_vert),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text("Really Good Gameplay. controls are easy to navigate. Multiplayer gets intense at time. especially when you're losing. Who doesn't love a challage? 10/10 would recommend.",style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[800],
                    ),),
                    SizedBox(height: 50,)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _topSection(String img) {
  return Container(
    height: 300,
    width: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
            height: 400,
            width: 240,
          ),
        ),
      ],
    ),
  );
}
