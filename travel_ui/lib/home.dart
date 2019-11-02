import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/destination.dart';
import 'package:travel_ui/viewall.dart';

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
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 25, left: 15, right: 15, bottom: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.bars,
                      color: Colors.black,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.transparent,
                      child: Icon(FontAwesomeIcons.user,color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Text(
                  "We show you the best place to travel",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[50],
                  ),
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.grey[700]),
                        contentPadding: EdgeInsets.only(left: 15.0, top: 10.0),
                        hintText: "What are you looking for ?",
                        hintStyle:
                            TextStyle(color: Colors.grey[700], fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _iconBuild(Icon(FontAwesomeIcons.hiking), 'Activity'),
                  _iconBuild(Icon(FontAwesomeIcons.bed), 'Hotels'),
                  _iconBuild(Icon(FontAwesomeIcons.plane), 'Travel'),
                  _iconBuild(Icon(FontAwesomeIcons.cookie), 'Restaurants'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _iconBuild(Icon(FontAwesomeIcons.searchLocation), 'Nearby'),
                  _iconBuild(Icon(FontAwesomeIcons.streetView), 'View'),
                  _iconBuild(Icon(FontAwesomeIcons.shoppingBasket), 'Shopping'),
                ],
              ),
              SizedBox(height: 30),
              _lineSection("Popular Places", "View All",context),
              SizedBox(height: 10),
              Container(
                // color: Colors.blue,
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: (destinations.length),
                  itemBuilder: (BuildContext context, int index) {
                    Destination destination = destinations[index];
                    return Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 200,
                          height: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(destination.imgUrl),
                                fit: BoxFit.fill,
                              )),
                        ),
                        Positioned(
                          left: 10,
                          top: 200,
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueAccent,
                            ),
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 10),
                                Icon(Icons.location_on, color: Colors.white),
                                SizedBox(width: 10),
                                Text(
                                  "${destination.name}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              _lineSection("Places Near You", "View All",context),
              SizedBox(height: 10),
              Container(
                // color: Colors.blue,
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: (destinations.length),
                  itemBuilder: (BuildContext context, int index) {
                    Destination destination = destinations[index];
                    return Stack(
                      children: <Widget>[
                        _placesNear(destination.imgUrl),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            // builder: (context) => HomePage(),
                            ));
                  },
                  child: Icon(FontAwesomeIcons.walking, color: Colors.red)),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            // builder: (context) => Explorepage(),
                            ));
                  },
                  child: Icon(Icons.favorite_border,color: Colors.red)),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            // builder: (context) => Explorepage(),
                            ));
                  },
                  child: Icon(Icons.library_music, color: Colors.red)),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            // builder: (context) => SongPage(),
                            ));
                  },
                  child: Icon(FontAwesomeIcons.facebookMessenger, color: Colors.red)),
              title: SizedBox.shrink()),
        ],
      ),
    );
  }
}

Widget _lineSection(String name, String n, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>ViewAll(),
            ));
          },
                  child: Text(
            n,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _iconBuild(Icon icon, String name) {
  return Padding(
    padding: const EdgeInsets.only(right: 15, left: 15),
    child: Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            icon,
            SizedBox(height: 5),
            Text(name),
          ],
        )
      ],
    ),
  );
}

Widget _placesNear(String img) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
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
    ),
  );
}