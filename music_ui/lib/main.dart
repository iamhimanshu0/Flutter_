import 'package:flutter/material.dart';
import 'package:music_ui/explor.dart';
import 'package:music_ui/songs.dart';

void main() => runApp(MaterialApp(
      home: Explorepage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: _topSection("images/ar.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 160, left: 15),
                    child: Text(
                      "Best of Arijit Singh",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              Center(
                child: Text("Treading Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
              ),
              SizedBox(height: 20),
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(1.5),
                crossAxisCount: 3,
                childAspectRatio: 0.80,
                mainAxisSpacing: 1.0,
                crossAxisSpacing: 1.0,
                children: <Widget>[
                  _treading("images/closer.jpg"),
                  _treading("images/atif.jpg"),
                  _treading("images/divide.jpg"),
                  _treading("images/faded.jpg"),
                  _treading("images/jb.jpg"),
                  _treading("images/selena.jpg"),
                ],
                shrinkWrap: true,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Weekly Charts",
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
                    height: 150,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _featured("images/1.jpg"),
                        SizedBox(width: 10),
                        _featured("images/love_me_like_you.jpg"),
                        SizedBox(width: 10),
                        _featured("images/ed_sheeran.jpg"),
                        SizedBox(width: 10),
                        _featured("images/atif.jpg"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
            ],
          ),
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
                        Icon(Icons.music_note, color: Colors.lightGreenAccent)),
                title: Text('Home',style: TextStyle(color: Colors.lightGreenAccent),)),
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
                title: Text('Explore',style: TextStyle(color: Colors.white),)),
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

Widget _topSection(String img) {
  return Container(
    height: 200,
    width: 400,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.fill,
      ),
      color: Colors.white,
    ),
  );
}

Widget _treading(String img) {
  return Container(
    height: 100,
    child: Card(
      color: Colors.white,
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
    ),
  );
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