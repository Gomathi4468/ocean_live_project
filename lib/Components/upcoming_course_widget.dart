import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ocean_live_project/Components/main_title_widget.dart';

class UpcomingCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -300,
          left: -300,
          child: Icon(
            FontAwesomeIcons.circle,
            size: 400.0,
            color: Colors.lightBlue[200],
          ),
        ),
        Positioned(
          top: 300,
          left: -120,
          child: Icon(
            Icons.circle,
            size: 200.0,
            color: Colors.pinkAccent,
          ),
        ),
        Positioned(
          top: 500,
          left: 420,
          child: Icon(
            Icons.circle,
            size: 200.0,
            color: Colors.lime,
          ),
        ),
        Positioned(
          top: 200,
          right: 400,
          child: Icon(
            Icons.circle,
            size: 180.0,
            color: Colors.lightBlue,
          ),
        ),
        Positioned(
            top: 0,
            right: 380,
            child: Text(
              '°',
              style: TextStyle(fontSize: 100, color: Colors.yellow),
            )),
        Positioned(
          top: 70,
          right: 330,
          child: Transform.rotate(
              angle: -170.2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                height: 10.0,
                width: 100.0,
              )),
        ),
        Container(
          padding: EdgeInsets.only(top: 20.0, bottom: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MainTitleWidget(
                title: "Upcoming Courses",
              ),
              SizedBox(
                height: 40.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    UpcomingCoursesImages(imagePath: 'images/python.gif'),
                    UpcomingCoursesImages(imagePath: 'images/python.gif'),
                    UpcomingCoursesImages(imagePath: 'images/python.gif'),
                    UpcomingCoursesImages(imagePath: 'images/python.gif'),
                    UpcomingCoursesImages(imagePath: 'images/python.gif'),
                    UpcomingCoursesImages(imagePath: 'images/python.gif'),
                    UpcomingCoursesImages(imagePath: 'images/python.gif'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class UpcomingCoursesImages extends StatelessWidget {
  UpcomingCoursesImages({this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          height: 300.0,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
