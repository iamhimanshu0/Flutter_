import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[400],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              width: 200,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
                color: Colors.orange[400],
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    "Explore Birds Talk",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Material(
                        elevation: 8,
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 20),
                              Text(
                                "Let's Find out the happy bird",
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 18,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(width: 20),
                              Icon(
                                Icons.search,
                                color: Colors.grey[500],
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "EUROPE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 1.5,
                            ),
                          ),
                          Text(
                            "ASIA",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey[400],
                              letterSpacing: 1.5,
                            ),
                          ),
                          Text(
                            "AMERICA",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey[400],
                              letterSpacing: 1.5,
                            ),
                          ),
                          Text(
                            "MORE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey[400],
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      height: 200,
                      width: 400,
                      // color: Colors.black,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        image: DecorationImage(
                          image: AssetImage('image/4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "SONG OF THE WEEK",
                            style: TextStyle(
                              color: Colors.orange[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              letterSpacing: 1.5,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "BullFinch (Pyrrhula Pyrrhula)",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              letterSpacing: 1.5,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Duration : 4.31 min",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.orange[500],
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 65,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "NEW IN CATALOGUE",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 500,
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Material(
                            elevation: 10,
                            child: Container(
                                width: 250,
                                height: 150,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 120,
                                      height: 500,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('image/5.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Hammer",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "3.52 Min",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.orange[500],
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Center(
                                            child: Icon(
                                              Icons.play_arrow,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(width: 10),
                          Material(
                            elevation: 10,
                            child: Container(
                                width: 250,
                                height: 150,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 120,
                                      height: 500,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('image/3.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Haven",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "1.23 min",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.orange[500],
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Center(
                                            child: Icon(
                                              Icons.play_arrow,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
