import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:news_app/news.dart';
import 'dart:convert';

import 'package:news_app/newsdetail.dart';

void main() => runApp(MaterialApp(

  // home:HomePage(),
  initialRoute: '/',
  debugShowCheckedModeBanner:false,
  routes: {
    '/':(context)=> HomePage(),
  },
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var APIKEY = "Add your api key"
  var url = "https://newsapi.org/v2/top-headlines?country=in&apiKey=$APIKEY";

  newsClass news;
  
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async{
    var res = await get(url);
    var decodedJson = jsonDecode(res.body);
    news = newsClass.fromJson(decodedJson);
    print(res.body);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Colors.red,
        title: Text("Daily News"),
        centerTitle: true,
      ),
      body: news== null ? Center(child: 
      CircularProgressIndicator()):
      GridView.count(
       crossAxisCount: 1,
       children: news.articles.map((n) =>
        InkWell(
          onTap: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> NewsDetail(
              newsArticle: n,
            )));
          },
          child: Hero(
            tag: n.title,
            child: Card(
               semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    n.urlToImage == null ? "https://www.aljazeera.com/mritems/Images/2019/10/15/3f1fccd4b0e54adea1ce9669903cad42_18.jpg":n.urlToImage,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Wrap(children: <Widget>[
                      Text(n.title,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,)),
                    ],
                     
                    ),
                  ),
                 
                ],
              ),
              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
              
            ),
          ),
        ),
       ).toList(),
       ),
    );
  }
}
