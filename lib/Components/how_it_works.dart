import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ocean_live_project/Components/main_title_widget.dart';

class HowItWorks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 340,
            right: 10,
            child: Transform.rotate(
                angle: -170.2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  height: 30.0,
                  width: 150.0,
                )),
          ),
          Positioned(
            top: 350,
            right: -200,
            child: Transform.rotate(
                angle: -170.2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  height: 70.0,
                  width: 400.0,
                )),
          ),
          Positioned(
            bottom: 0,
            left: -200,
            child: Icon(
              FontAwesomeIcons.dotCircle,
              size: 400.0,
              color: Colors.grey[350],
            ),
          ),
          Positioned(
            child: Icon(
              FontAwesomeIcons.audible,
              size: 400,
              color: Colors.grey[350],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainTitleWidget(
                    title: 'How It Works',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/online_lesson.gif',
                        width: 400.0,
                      ),
                      Text(
                        'Local Lessons',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.blue[200],
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 400.0,
                        child: Text(
                          "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/online_lesson.gif',
                        width: 400.0,
                      ),
                      Text(
                        'Local Lessons',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.blue[200],
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 400.0,
                        child: Text(
                          "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
