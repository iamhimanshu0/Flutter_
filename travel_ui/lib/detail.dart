import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/img_8.png"), fit: BoxFit.fill)),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Brazil",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      SizedBox(width: 5),
                      Text("2,415 Ratings")
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.grey),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Overview",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Visitors cannot conqure Brazil  in just one visit instead. Take a tour of the must-visit sites- Empire Stte Building, Central Park, Urban Art Museum",
                    style: TextStyle(fontSize: 16, letterSpacing: 0.5),
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.grey),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Facibilty",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(color: Colors.cyan),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.wifi),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Wifi")
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.coffee),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Coffee")
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.cookieBite),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Restaurant")
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.glassCheers),
                          SizedBox(
                            height: 8,
                          ),
                          Text("Bar Club")
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Photos",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(color: Colors.cyan),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(1.5),
                    crossAxisCount: 3,
                    childAspectRatio: 0.80,
                    mainAxisSpacing: 1.0,
                    crossAxisSpacing: 1.0,
                    children: <Widget>[
                      _treading("images/img_1.jpg"),
                      _treading("images/img_2.jpg"),
                      _treading("images/img_3.jpg"),
                      _treading("images/img_4.jpg"),
                      _treading("images/img_5.jpg"),
                      _treading("images/img_6.jpg"),
                    ],
                    shrinkWrap: true,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                       
                      Text("Check Availability",style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                     Container(
                       height:50,
                       width: 120,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.redAccent,
                         boxShadow: [BoxShadow(color: Colors.black)]
                       ),
                       child: Center(
                         child:Text("Book Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                         ,),
                     ),
                    ],
                  )
                ],
              ),
            ),
          )
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
                  child: Icon(Icons.favorite_border, color: Colors.red)),
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
                  child: Icon(FontAwesomeIcons.facebookMessenger,
                      color: Colors.red)),
              title: SizedBox.shrink()),
        ],
      ),
    );
  }
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
