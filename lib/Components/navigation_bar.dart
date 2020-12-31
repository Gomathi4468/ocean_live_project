import 'package:flutter/material.dart';
import 'ocean_icons.dart';

class TopNavigationBar extends StatelessWidget {
  final String title;
  TopNavigationBar({this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 70,
                wordSpacing: 1.8,
                fontFamily: 'Roboto-Light.ttf',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          color: Color(0xff0091D2),
          height: 310,
          width: double.infinity,
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Icon(
            Ocean.o,
            size: 80,
            color: Color(0xffBFD400),
          ),
        ),
        Positioned(
          top: 120,
          left: 80,
          child: Icon(
            Ocean.o,
            size: 80,
            color: Color(0xffF8BE5A),
          ),
        ),
        Positioned(
          top: 180,
          left: 170,
          child: Icon(
            Ocean.line_circleshape,
            size: 100,
            color: Color(0xffFFD444),
          ),
        ),
        Positioned(
          top: 20,
          left: 1800,
          child: Icon(
            Ocean.o,
            size: 80,
            color: Color(0xffBFD400),
          ),
        ),
        Positioned(
          top: 130,
          left: 1750,
          child: Icon(
            Ocean.o,
            size: 80,
            color: Color(0xffF8BE5A),
          ),
        ),
        Positioned(
          top: 130,
          left: 1840,
          child: Transform.rotate(
            angle: -0.3,
            child: Icon(
              Ocean.a,
              size: 80,
              color: Color(0xff00FFB9),
            ),
          ),
        ),
        Positioned(
          top: 220,
          left: 1800,
          child: Transform.rotate(
            angle: -0.3,
            child: Icon(
              Ocean.a,
              size: 80,
              color: Color(0xffFF00FF),
            ),
          ),
        ),
        Positioned(
          top: 180,
          left: 1630,
          child: Icon(
            Ocean.line_circleshape,
            size: 100,
            color: Color(0xffFFD444),
          ),
        )
      ],
    );
  }
}
