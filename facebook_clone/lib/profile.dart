import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("images/post_5.jpg"),
                      fit: BoxFit.cover,
                    )),
                  ),
                )
              ],
            ),
            Positioned(
              top: 100,
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("images/user_2.png"),
                    ),
                    border: Border.all(color: Colors.white, width: 6.0)),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 80,
      ),
      Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Himanshu Tripathi",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blueAccent,
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "61 Pending Posts",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
              Divider(
                height: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Machine Learning, Artifical Intelligence Data Science Enthusiasm. Programmer, Developer",
                style: TextStyle(fontSize: 18),
              ),
              Divider(
                height: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Add to story",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.edit,
                        size: 30,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Edit Profile",
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.more_horiz,
                        size: 30,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "More",
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 10,
                color: Colors.grey,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.work,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Co-Founder at The Gamer Studio",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.school,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Studied at D.S.B Campus Nainital",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Lives in Nainital",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Single",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.rss_feed,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Followed by 31.2M people",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "See More About Yourself",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Divider(
                height: 10,
                color: Colors.grey,
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.edit, color: Colors.blue),
                  Text("Edit Public Details"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage("images/user_2.png"),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: <Widget>[
                                Text("Himanshu"),
                                Text(
                                  "2 min ago",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    SizedBox(height: 2),
                    Text("Wow Really Beautful images"),
                    SizedBox(height: 5),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/post_3.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          // color: Colors.grey[300],
                          height: 30,
                          width: 80,
                          child: Center(
                              child: Row(
                            children: <Widget>[
                              Icon(FontAwesomeIcons.thumbsUp),
                              SizedBox(
                                width: 10,
                              ),
                              Text("1.25K"),
                            ],
                          )),
                        ),
                        Container(
                          // color: Colors.grey[300],
                          height: 30,
                          width: 80,
                          child: Center(
                              child: Row(
                            children: <Widget>[
                              Icon(FontAwesomeIcons.comment),
                              SizedBox(
                                width: 10,
                              ),
                              Text("654"),
                            ],
                          )),
                        ),
                        Container(
                          // color: Colors.grey[300],
                          height: 30,
                          width: 80,
                          child: Center(
                              child: Row(
                            children: <Widget>[
                              Icon(FontAwesomeIcons.share),
                              SizedBox(
                                width: 10,
                              ),
                              Text("198"),
                            ],
                          )),
                        ),
                      ],
                    ),
                  ])
            ],
          ))
    ]));
  }
}
