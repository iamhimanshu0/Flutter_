import 'package:flutter/material.dart';
import 'package:uttarakhand1/slide_model.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 350,
          height: 320,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage(slideList[index].imageUrl),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(height: 30),
        Text(slideList[index].title,
            style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
