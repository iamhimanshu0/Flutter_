import 'package:flutter/material.dart';
import 'package:playstore_ui/gamedetail.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.search, color: Colors.black),
        title: Text(
          "Google Play",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameDetail(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                      image: AssetImage("images/ht.jpg"), fit: BoxFit.cover),
                ),
                height: 20,
                width: 40,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.green,
                labelColor: Colors.green,
                unselectedLabelColor: Colors.black,
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'For You',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Top Charts',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Permium',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Category',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Family',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              // padding: EdgeInsets.only(top: 8),
              height: 125.0,
              // color: Colors.black,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _topSection("images/cod.jpg"),
                  SizedBox(width: 3),
                  _topSection("images/pubg.jpg"),
                  SizedBox(width: 3),
                  _topSection("images/fornite.jpg"),
                  SizedBox(width: 3),
                  _topSection("images/coc.jpeg"),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "New & updated games",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      "Selected games of the week",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(height: 15),
            Container(
              // padding: EdgeInsets.only(top: 8),
              height: 160.0,
              // color: Colors.black,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _newUpdatedGame("images/cod.jpg", "Call of Duty", "1.1 GB"),
                  SizedBox(width: 3),
                  _newUpdatedGame("images/asphalt.jpg", "Asphalt", "1.5 GB"),
                  SizedBox(width: 3),
                  _newUpdatedGame(
                      "images/clash-royale.jpg", "Clash Royal", "152 MB"),
                  SizedBox(width: 3),
                  _newUpdatedGame("images/coc.jpeg", "COC", "90.5 MB"),
                  SizedBox(width: 3),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Recommended for you",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(height: 15),
            Container(
              // padding: EdgeInsets.only(top: 8),
              height: 160.0,
              // color: Colors.black,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _newUpdatedGame("images/pubg.jpg", "PUBG Mobile", "1.2 GB"),
                  SizedBox(width: 3),
                  _newUpdatedGame(
                      "images/sniperF.jpg", "Sniper Fury", "0.8 GB"),
                  SizedBox(width: 3),
                  _newUpdatedGame("images/cod.jpg", "Call Of Duty", "1.1 GB"),
                  SizedBox(width: 3),
                  _newUpdatedGame(
                      "images/alto.jpg", "Alto's Adventure", "68.5 MB"),
                  SizedBox(width: 3),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Casual Game",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(height: 15),
            Container(
              // padding: EdgeInsets.only(top: 8),
              height: 230.0,
              // color: Colors.black,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _casualGame("images/asphalt.jpg", "Asphalt", "1.8 GB"),
                  SizedBox(width: 3),
                  _casualGame("images/pubg.jpg", "PUBG Mobile", "1.2 GB"),
                  SizedBox(width: 3),
                  _casualGame("images/fornite.jpg", "Fornite Mobile", "1.2 GB"),
                  SizedBox(width: 3),
                  _casualGame("images/sniperF.jpg", "Sniper Fury", "865 MB"),
                  SizedBox(width: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _topSection(String img) {
  return Container(
    height: 300,
    width: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
            height: 300,
            width: 240,
          ),
        ),
      ],
    ),
  );
}

Widget _newUpdatedGame(String img, String name, String size) {
  return Card(
    elevation: 10,
    child: Container(
      height: 400,
      width: 150,
      // color: Colors.black,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover),
                ),
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(height: 5),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              size,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _casualGame(String img, String name, String size) {
  return Card(
    elevation: 10,
    child: Container(
      height: 400,
      width: 250,
      // color: Colors.black,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover),
                ),
                height: 150,
                width: 300,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                          image: AssetImage(img), fit: BoxFit.cover),
                    ),
                    height: 50,
                    width: 50,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      size,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
