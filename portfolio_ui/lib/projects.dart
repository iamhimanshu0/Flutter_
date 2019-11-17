import 'package:flutter/material.dart';
import 'package:portfolio_ui/allprojects.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              // borderRadius:
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 80, 0, 0),
            child: Text("All Projects",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 130, 0, 0),
            child: Text("Check Out My All Projects",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 2,
                )),
          ),
        ],
      ),
      SizedBox(
        height: 8,
      ),
      Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: (ap.length),
            itemBuilder: (BuildContext context, int index) {
              AllProject p = ap[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                child: Card(
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              // color: Colors.blue,
                              image: DecorationImage(image: AssetImage(p.img))),
                        ),
                        Text(
                          p.project_name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          p.language_use,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    )),
              );
            },
          )),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          child: Container(
            height: 150,
            width: 200,
          ),
        ),
      )
    ]));
  }
}
