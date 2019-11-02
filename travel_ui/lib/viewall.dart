import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/destination.dart';
import 'package:travel_ui/detail.dart';

class ViewAll extends StatefulWidget {
  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.arrow_back),
                SizedBox(width: 220),
                Icon(Icons.search),
                SizedBox(width: 30),
                Icon(FontAwesomeIcons.user),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "All Places",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Details(),
                  ));
                }, child: Icon(FontAwesomeIcons.bars))
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            // color: Colors.blue,
            height: MediaQuery.of(context).size.height - 10,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: (destinations.length),
              itemBuilder: (BuildContext context, int index) {
                Destination destination = destinations[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
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
                      top: 220,
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
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
