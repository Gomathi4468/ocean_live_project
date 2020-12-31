import 'package:flutter/material.dart';

class TextToImage extends StatelessWidget {
  String topic;
  String content;
  String photo;
  TextToImage({this.topic, this.content, this.photo});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.only(left: 50.0, right: 30.0),
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
      ],
    );
  }
}
