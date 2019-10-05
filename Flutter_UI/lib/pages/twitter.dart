import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Twitter"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,20,20,0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("images/ht.jpg"),
                  radius: 50,
                  ),
              FlatButton(
                   onPressed: (){},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5.0)),
                    alignment: Alignment.center,
                    child: Text("Edit Profile",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    width: 150.0,
                    height: 30.0,
              )),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Himanshu Tripathi",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),
                    ),
                    SizedBox(height:5),
                    Text("@iam_himanshu0",
                    style: TextStyle(fontSize:15,color: Colors.grey[700]),
                    ),
                    SizedBox(height:8),
                    Text("CEO and Co-Founder at The Gamer Studio. \nMachine learning, Artificial Intelligence,\nData Science Enthusiasm.",
                    style: TextStyle(fontSize:15),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.link
                        ),
                        SizedBox(width: 10),
                        Text("himanshutripathi.herukoapp.com",
                        style: TextStyle(
                          color: Colors.blue
                        ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.ac_unit
                        ),
                        SizedBox(width:5),
                        Text("Born September 16",
                        style: TextStyle(
                          color: Colors.grey[600]
                        ),
                        ),
                        SizedBox(width:20),
                        Icon(
                          Icons.calendar_today
                        ),
                        SizedBox(width: 5),
                        Text("Join April 2016",
                        style: TextStyle(
                          color: Colors.grey[600]
                        ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Text("63",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize:18 )),
                        SizedBox(width:12),
                        Text("Following",
                        style: TextStyle(
                          color: Colors.grey[600]
                        ),
                        ),
                        SizedBox(width:75),
                        Text("30.1M",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize:18 )),
                        SizedBox(width: 12),
                        Text("Followers",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                        ),
                      ],
                    ),
                   
                  ],
                ),
              ],
            ),
             SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Tweets", 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                         fontSize: 15,
                        ),),
                         Text("Tweets & Replies", 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                         Text("Media", 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                           fontSize: 15,
                        ),),
                         Text("Likes", 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                           fontSize: 15,
                        ),),
                      ],
                    ),
                    Divider(
                      height: 20,
                      color: Colors.blue[600],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage("images/ht.jpg"),radius: 30,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Himanshu Tripathi",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 5),
                              Text("Let's Learn Flutter.\nIt is really easy to use.\nAnd you can make pretty awesome\nlooking app with flutter"),
                              Text("@flutter, @iam_himanshu0,\n#let's_Learn",
                              style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left:50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                           Icons.favorite,
                           color: Colors.red,
                          ),
                          Icon(
                            FontAwesomeIcons.retweet,
                            color: Colors.green,
                          //  Icons.retwee,
                          ),
                          Icon(
                           Icons.comment
                          ),
                        ],
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}