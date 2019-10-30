import 'package:flutter/material.dart';
import 'package:music_ui/main.dart';
import 'package:music_ui/songs.dart';

class Explorepage extends StatefulWidget {
  @override
  _ExplorepageState createState() => _ExplorepageState();
}

class _ExplorepageState extends State<Explorepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Explore",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon:
                                Icon(Icons.search, color: Colors.grey[700]),
                            contentPadding:
                                EdgeInsets.only(left: 15.0, top: 10.0),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color: Colors.grey[600], fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Featured",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    // padding: EdgeInsets.only(top: 8),
                    height: 140.0,
                    // color: Colors.black,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _featured("images/ed_sheeran.jpg"),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Prefect",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Ed Sheeran",
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _featured("images/closer.jpg"),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Closer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "The Chainsmokers",
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _featured("images/love_me_like_you.jpg"),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Love Me Like....",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Ellie Goulding",
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _featured("images/faded.jpg"),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Faded",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Alan Walker",
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.grey[700]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Genres + Moods",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        "View as list",
                        style: TextStyle(
                          color: Colors.grey[700],
                          // fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _geners("Hip-Hop"),
                        SizedBox(width: 8),
                        _geners("Pop"),
                        SizedBox(width: 8),
                        _geners("Dance"),
                        SizedBox(width: 8),
                        _geners("Solo"),
                        SizedBox(width: 8),
                        _geners("Rock"),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 30,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _geners("R&B / Soul"),
                        SizedBox(width: 8),
                        _geners("Rock"),
                        SizedBox(width: 8),
                        _geners("Hindi"),
                        SizedBox(width: 8),
                        _geners("English"),
                        SizedBox(width: 8),
                        _geners("Rock"),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.grey[700]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Top Artists",
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
                  SizedBox(height: 15),
                  Container(
                    height: 150,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _topArtists("images/arijit_singh.jpg"),
                        SizedBox(width: 10),
                        _topArtists("images/jb.jpg"),
                        SizedBox(width: 10),
                        _topArtists("images/atif.jpg"),
                        SizedBox(width: 10),
                        _topArtists("images/selena.jpg"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.grey[700]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Best Of",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        "More",
                        style: TextStyle(
                          color: Colors.grey[700],
                          // fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 130,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _videos("images/best_1.jpg"),
                        SizedBox(width: 10),
                        _videos("images/best_2.jpg"),
                        SizedBox(width: 10),
                        _videos("images/best_3.jpg"),
                      ],
                    ),
                  ),
                ],
              ),
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
                    child:
                        Icon(Icons.music_note, color: Colors.white)),
                title: Text('Home',style: TextStyle(color: Colors.white),)),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Explorepage(),
                          ));
                    },
                    child: Icon(Icons.library_music, color: Colors.lightGreenAccent)),
                title: Text('Explore',style: TextStyle(color: Colors.lightGreenAccent),)),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SongPage(),
                          ));
                    },
                    child: Icon(Icons.favorite_border, color: Colors.white)),
                title: Text('Favorite',style: TextStyle(color: Colors.white),)),
          ],
        ));
  
  }
}

Widget _featured(String img) {
  return Container(
    height: 100,
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
      ),
      color: Colors.white,
    ),
  );
}

Widget _geners(String name) {
  return Container(
    width: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey[800],
    ),
    child: Center(
      child: Text(name,
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          )),
    ),
  );
}

Widget _topArtists(String img) {
  return Container(
    height: 150,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(90),
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
      ),
      color: Colors.white,
    ),
  );
}

Widget _videos(String img) {
  return Container(
    height: 140,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
      ),
      color: Colors.white,
    ),
  );
}
