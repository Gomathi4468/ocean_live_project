import 'package:flutter/material.dart';
import 'package:ocean_live_project/Components/video_player_screen.dart';
import 'package:ocean_live_project/constants.dart';

class SliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/Slide.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    style: TextStyle(
                      fontSize: 65.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                    onPressed: () {},
                    color: Colors.white,
                    textColor: textColor,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Enroll now ",
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.87)
                ..rotateY(0.0005),
              alignment: FractionalOffset.center,
              child: Container(
                margin: EdgeInsets.only(right: 100.0),
                child: VideoPlayerScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
