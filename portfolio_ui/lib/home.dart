import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  // borderRadius:
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 100, 0, 0),
                child: Text("Himanshu Tripathi !",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 150, 0, 0),
                child: Text("Machine Learning And Data Science",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      letterSpacing: 2,
                    )),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: <Widget>[
                _lineSection("Top Projects", "See all"),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          _featured("images/top_1.png"),
                          SizedBox(
                            width: 20,
                          ),
                          _featured("images/top_2.png"),
                          SizedBox(
                            width: 20,
                          ),
                          _featured("images/top_3.png"),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                _lineSection("Programming Skills", "More"),
                SizedBox(height: 20),
                Container(
                    height: 180,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                _featured("images/python.png"),
                                Text(
                                  "Python",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: <Widget>[
                                _featured("images/mobile.png"),
                                Text(
                                  "App Development",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: <Widget>[
                                _featured("images/web.png"),
                                Text(
                                  "Web Development",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: <Widget>[
                                _featured("images/code.png"),
                                Text(
                                  "C/C++/C#",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: <Widget>[
                                _featured("images/git.png"),
                                Text(
                                  "Version Control",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
                SizedBox(height: 20),
                _lineSection("Machine Learning", "More"),
                SizedBox(height: 20),
                Container(
                    height: 180,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                _mad("images/brain.png"),
                                Text(
                                  "  Brain Tumor Classification",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: <Widget>[
                                _mad("images/spam.png"),
                                Text(
                                  "Spam Classifier",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
                SizedBox(height: 20),
                _lineSection("Data Science", "More"),
                SizedBox(height: 20),
                Container(
                    height: 180,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                _mad("images/data+1.png"),
                                Text(
                                  " Data Explore",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: <Widget>[
                                _mad("images/data_2.png"),
                                Text(
                                  "EDA",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _lineSection(String text, String smalltext) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Text(
          smalltext,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.lightBlue[900]),
        ),
      ],
    ),
  );
}

Widget _featured(String img) {
  return Container(
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
      image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
      color: Colors.white,
    ),
  );
}

Widget _mad(String img) {
  return Container(
    height: 150,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
      image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
      color: Colors.white,
    ),
  );
}
