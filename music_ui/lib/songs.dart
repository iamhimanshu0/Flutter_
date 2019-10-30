import 'package:flutter/material.dart';
import 'package:music_ui/explor.dart';
import 'package:music_ui/main.dart';

class SongPage extends StatefulWidget {
  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/black.jpg"),
                            fit: BoxFit.cover,
                            )),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Ed Sheeran",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "66,088,181 MONTHLY LISTENERS",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.swap_vertical_circle,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5),
                          Text("More", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.cyanAccent,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Play",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5),
                          Text("Follow", style: TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Top Tracks",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      color: Colors.grey[700],
                      // fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                _songname("Beautiful People", "Ed Sheeran, Khalid", "1"),
                _songname("I Don't Care", "Ed Sheeran,Justin Bieber", "2"),
                _songname("Perfect", "Ed Sheeran", "3"),
                _songname("Shape of You", "Ed Sheeran", "4"),
                _songname("Happier", "Ed Sheeran", "5"),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: Icon(Icons.music_note, color: Colors.white)),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                )),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Explorepage(),
                          ));
                    },
                    child: Icon(Icons.library_music, color: Colors.white)),
                title: Text(
                  'Explore',
                  style: TextStyle(color: Colors.white),
                )),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SongPage(),
                          ));
                    },
                    child: Icon(Icons.favorite_border,
                        color: Colors.lightGreenAccent)),
                title: Text(
                  'Favorite',
                  style: TextStyle(color: Colors.lightGreenAccent),
                )),
          ],
        ));
  }
}

Widget _songname(String songName, String singer,String id)
{
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(id,style: TextStyle(color: Colors.grey[700],fontSize: 18),),
        SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Text(songName,style: TextStyle(color: Colors.white,fontSize: 19),),
             SizedBox(height: 5),
             Text(singer, style: TextStyle(color: Colors.grey[700])),
          ],
        ),
        
      ],
    ),
  );
}