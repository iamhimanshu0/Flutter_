import 'package:facebook_clone/profile.dart';
import 'package:facebook_clone/view/firstlist.dart';
import 'package:facebook_clone/view/postlist.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                _topSection(context),
                SizedBox(
                  height: 10,
                ),
                _secondSection(),
                Divider(height: 20, color: Colors.grey),
                _thirdSection(),
                Divider(height: 20, color: Colors.grey),
                // _storiesSection(),
                Container(
                  // color: Colors.blue,
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: (stories.length),
                    itemBuilder: (BuildContext context, int index) {
                      Story story = stories[index];
                      return Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // color: Colors.green,
                                image: DecorationImage(
                                    image: AssetImage(story.imgUrl),
                                    fit: BoxFit.fill)),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 120,
                              height: 30,
                              color: Colors.white70,
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            left: 50,
                            child: Wrap(
                              children: <Widget>[],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Divider(height: 10, color: Colors.grey),
                // PostShow(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    // color: Colors.blue,
                    height: MediaQuery.of(context).size.height,
                    // color: Colors.red,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: (post.length),
                      itemBuilder: (BuildContext context, int index) {
                        Post p = post[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundImage: AssetImage(p.userImg),
                                      radius: 30,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(p.username),
                                        Text(
                                          p.active,
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
                            Text(p.textdata),
                            SizedBox(height: 5),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(p.imgUrl),
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
                                      Text(p.like),
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
                                      Text(p.comment),
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
                                      Text(p.share),
                                    ],
                                  )),
                                )
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _topSection(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Profile()));
        },
        child: Icon(
          FontAwesomeIcons.user,
          size: 30,
        ),
      ),
      Container(
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 5, 8, 5),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 35,
              ),
              Icon(
                Icons.search,
                size: 30,
              ),
              Center(
                  child: Text(
                "Search Facebook",
                style: TextStyle(fontSize: 18),
              ))
            ],
          ),
        ),
      ),
      Icon(
        Icons.camera_alt,
        size: 30,
      ),
    ],
  );
}

Widget _secondSection() {
  return Padding(
    padding: const EdgeInsets.only(top: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.circle,
          size: 30,
        ),
        Icon(
          Icons.group,
          size: 30,
        ),
        Icon(FontAwesomeIcons.facebookMessenger),
        Icon(
          Icons.video_call,
          size: 30,
        ),
        Icon(
          Icons.notifications,
          size: 30,
        ),
        Icon(
          Icons.apps,
          size: 30,
        ),
      ],
    ),
  );
}

Widget _thirdSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      CircleAvatar(
          backgroundImage: AssetImage("images/user_2.png"), radius: 35),
      Text(
        "What's on your mind?",
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey[700],
        ),
      ),
      Column(
        children: <Widget>[
          Icon(
            Icons.photo_library,
            size: 25,
          ),
          SizedBox(height: 5),
          Wrap(
            children: <Widget>[
              Text(
                "Photo",
                style: TextStyle(fontSize: 15),
              ),
            ],
          )
        ],
      )
    ],
  );
}
