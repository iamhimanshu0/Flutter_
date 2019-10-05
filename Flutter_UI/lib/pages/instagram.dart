import 'package:flutter/material.dart';

class InstagramHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(backgroundColor: Colors.white,
    centerTitle:true,
    elevation: 1.0,
    // leading: Icon(Icons.camera_alt,color:Colors.black),
    title: SizedBox(
      height: 25.0,
      child: 
      Text("Instagram",
      style: TextStyle(
        color: Colors.black
      )),
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send,color: Colors.black,),
      ),
    ],
    ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,10,20,0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("images/ht2.jpg"),
                  radius: 50,
                ),
                Column(
                  children: <Widget>[
                    Text("3",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold )),
                    SizedBox(height: 10),
                    Text("Posts")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text("30.1M",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold )),
                    SizedBox(height: 10),
                    Text("Followers")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text("12",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold )),
                    SizedBox(height: 10),
                    Text("Following")
                  ],
                ),
                
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Row(
                children: <Widget>[
             FlatButton(
              onPressed: (){},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5.0)),
                alignment: Alignment.center,
                child: Text("Follow",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                width: 195.0,
                height: 30.0,
              )),
                ],
              ),
            ),
            SizedBox(height: 10),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Text("HIMANSHU ",style: TextStyle(fontWeight: FontWeight.bold,fontSize:15, )),
                   SizedBox(height: 5,),
                   Text("CEO and Co-Founder at The Gamer Studio",
                   style: TextStyle(fontSize:15, )),
                   SizedBox(height: 5),
                   Text("himanshutripathi.herukoapp.com/",
                   style: TextStyle(color: Colors.blue[600]),),
                   
                ],
              ),
             
             ],
             
           ),
           SizedBox(height:10),
           Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                children: <Widget>[
             FlatButton(
              onPressed: (){},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(5.0)),
                alignment: Alignment.center,
                child: Text("Edit Profile",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                width: 280.0,
                height: 35.0,
              )),
                ],
              ),
            ),
           Divider(
             height: 40.0,
             color: Colors.grey[500],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Icon(
                 Icons.grid_on,
                 size: 30,
                 
               ),
               Icon(
                 Icons.list,
                 size: 30,
                 color: Colors.grey[600],
               )
             ],
           ),
           SizedBox(height: 20),
          //TODO:// have to make photo;
           GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
//                    padding: const EdgeInsets.all(0.5),
                mainAxisSpacing: 1.5,
                crossAxisSpacing: 1.5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Image.asset("images/ht.jpg"),
                  Image.asset("images/ht2.jpg"),
                  Image.asset("images/ht.jpg"),
                  // Image.asset("images/ht2.jpg"),
                  // Image.asset("images/ht.jpg"),
                  // Image.asset("images/ht2.jpg"),
                ],
           ),
          ],
        ),
      ),
           
      
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.add_box),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}