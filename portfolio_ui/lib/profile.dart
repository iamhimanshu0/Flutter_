import 'package:flutter/material.dart';

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
        color: Colors.lightBlue,
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
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
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("images/user.png"),
                    ),
                    border: Border.all(color: Colors.white, width: 6.0)),
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 90),
      Center(
        child: Column(
          children: <Widget>[
            Text(
              "Himanshu Tripathi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "CO-Founder at The Gamer Studio",
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 1.2,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("images/fb.png"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("images/instagram.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("images/github.png"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("images/link.png"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("images/youtube.png"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Text(
          "Experience",
          style: TextStyle(
            fontSize: 25,
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: <Widget>[
            exp("images/google.png", "Data Scientist", "Google",
                "Sep 2019 - Present"),
            SizedBox(
              height: 20,
            ),
            exp("images/instagram.jpg", "UI Designer Mobile", "Instagram",
                "Sep 2019 - Present"),
            SizedBox(
              height: 20,
            ),
            exp("images/fb.png", "Machine Learning Engineer", "Facebook",
                "Sep 2019 - Present"),
          ],
        ),
      ),
      SizedBox(height: 20),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        // color: Colors.blue,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            _mad("images/p_2.png"),
            SizedBox(width: 20),
            _mad("images/p_1.png"),
            SizedBox(width: 20),
            _mad("images/p.png"),
            SizedBox(width: 20),
            _mad("images/p_3.png"),
          ],
        ),
      )
    ]));
  }
}

Widget exp(String img, String pos, String name, String time) {
  return Row(
    children: <Widget>[
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
      ),
      SizedBox(width: 30),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            pos,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black54,
            ),
          )
        ],
      )
    ],
  );
}

Widget _mad(String img) {
  return Card(
    elevation: 5,
    child: Container(
      height: 150,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
        color: Colors.white,
      ),
    ),
  );
}
