import 'package:flutter/material.dart';

class ImageToText extends StatelessWidget {
  String topic;
  String content;
  String photo;
  ImageToText({this.topic, this.content, this.photo});
  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 300.0,
                    height: 300.0,
                    margin: EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: Image(
                      image: AssetImage(photo),
                    ),
                  ),
                  Container(
                    width: 300.0,
                    color: Color(0xff0091d2),
                    margin: EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0),
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: Image(
                      image: AssetImage(photo),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.only(right: 50.0),
            margin: EdgeInsets.only(right: 30.0, left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topic,
                  style: TextStyle(
                      color: Color(0xff0091d2),
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  content,
                  style: TextStyle(fontSize: 20.0, color: Colors.black45),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
