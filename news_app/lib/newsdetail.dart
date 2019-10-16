import 'package:flutter/material.dart';
import 'package:news_app/news.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetail extends StatelessWidget {

  final Articles newsArticle;
  bodyWidget(BuildContext context) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
           Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.network(
            newsArticle.urlToImage == null ? " ": newsArticle.urlToImage,
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(8),
        ),
        SizedBox(height: 10),
        Text(newsArticle.title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold
        ),),
         SizedBox(height: 15),
         Expanded(
           child:SingleChildScrollView(
           child: Text(newsArticle.description,
           style: TextStyle(
             fontSize: 20
           ),),),
         ),
         SizedBox(height:10),
         
         InkWell(
           onTap: () async{
             if(await canLaunch(newsArticle.url)){
                launch(newsArticle.url);
              }
           },
           child: Text(newsArticle.url,
           style: TextStyle(color: Colors.blue),),
         ),

         SizedBox(height:40),
         Row(
           children: <Widget>[
              Text(newsArticle.author==null?"Author:- No Information": "Author:- " +newsArticle.author ,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),),
           ],
         )
       
      ]

    
    ),
  );

  NewsDetail({this.newsArticle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        
        backgroundColor: Colors.red,
        title: Text(newsArticle.title),
        centerTitle: true,
      ),
      body: bodyWidget(context),
    );
  }
}