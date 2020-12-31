import 'package:flutter/material.dart';
import 'rectangular_raw_material_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      height: 300.0,
      width: 255.0,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image(
              image: AssetImage('images/lap.jpg'),
              // width: 350.0,
              // height: 100.0,
            ),
          ),
          // SizedBox(
          //   height: 15.0,
          // ),
          Text(
            "Flix John",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          // SizedBox(
          //   height: 15.0,
          // ),
          Text(
            "Tutor at Ocean",
            style: TextStyle(
              color: Colors.black45,
              fontSize: 15.0,
            ),
          ),
          // SizedBox(
          //   height: 15.0,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RectangularMaterialButton(
                icon: FontAwesomeIcons.facebookF,
                onPressed: () {},
              ),
              RectangularMaterialButton(
                icon: FontAwesomeIcons.googlePlusG,
                onPressed: () {},
              ),
              RectangularMaterialButton(
                icon: FontAwesomeIcons.linkedinIn,
                onPressed: () {},
              ),
              RectangularMaterialButton(
                icon: FontAwesomeIcons.twitter,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
