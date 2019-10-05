import 'package:flutter/material.dart';

class FacebookHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Facebook")),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0,15.0,20.0,0),
        child: Column(
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/ht.jpg"),
                radius: 60.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Center(
              child: Text("Himanshu Tripathi",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              )
              ),
              Divider(
                height: 30.0,
                color: Colors.black, 
              ),
              Center(
                child: Text("CEO and Co-Founder at The Gamer Studio. \nMachine learning, Artificial Intelligence, Data Science Enthusiasm. Also Programmer and developer. And a Guitar Fingerstyle Player",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
               Divider(
                height: 30.0,
                color: Colors.black, 
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.add_a_photo,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.person_add,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30.0,
                  ),
                ],
              ),
               Divider(
                height: 30.0,
                color: Colors.black, 
              ),
             Padding(
               padding: const EdgeInsets.fromLTRB(15.0,10.0,10.0,0),
               child: Row(
                 children: <Widget>[
                   Icon(
                     Icons.book
                   ),
                   SizedBox(width: 30.0),
                   Text("Studies at D.S.B Campus Nainital"),
                 ],
               ),
               
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(15.0,20.0,10.0,0),
               child: Row(
                 children: <Widget>[
                   Icon(
                     Icons.home
                   ),
                   SizedBox(width: 30.0),
                   Text("Lives in Nainital"),
                 ],
               ),
             ),
              Padding(
               padding: const EdgeInsets.fromLTRB(15.0,20.0,10.0,0),
               child: Row(
                 children: <Widget>[
                   Icon(
                     Icons.location_city
                   ),
                   SizedBox(width: 30.0),
                   Text("From Pithoragarh"),
                 ],
               ),
             ),
              Padding(
               padding: const EdgeInsets.fromLTRB(15.0,20.0,10.0,0),
               child: Row(
                 children: <Widget>[
                   Icon(
                     Icons.favorite
                   ),
                   SizedBox(width: 30.0),
                   Text("Single"),
                 ],
               ),
             ),
              Padding(
               padding: const EdgeInsets.fromLTRB(15.0,20.0,10.0,0),
               child: Row(
                 children: <Widget>[
                   Icon(
                     Icons.rss_feed
                   ),
                   SizedBox(width: 30.0),
                   Text("Followed by 31.0M people"),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(15.0,20.0,10.0,0),
               child: Row(
                 children: <Widget>[
                   Icon(
                     Icons.more
                   ),
                   SizedBox(width: 30.0),
                   Text("See More About Yourself"),
                 ],
               ),
             ),
          ],
        ),
      ),
    );
  }
}