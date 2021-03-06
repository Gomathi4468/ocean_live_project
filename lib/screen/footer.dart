import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ocean_live_project/Components/material_button.dart';
import 'package:ocean_live_project/constants.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.0),
      color: Color(0xFF004478),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),

            children: [
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'OCEAN ACADEMY',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      padding: EdgeInsets.only(right: 150.0),
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.only(right: 300.0),
                      child: Text(
                        'Ocean was founded on the principle of building and implementing'
                        ' great ideas that drive progress for the students ond clients',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 50.0),
                            margin: EdgeInsets.only(right: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter your Email',
                                hintStyle: kbottom,
                                // contentPadding: EdgeInsets.only(
                                //     top: 10, bottom: 10, left: 38),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(1.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 2.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(1.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            //padding: EdgeInsets.only(right: 250.0),
                            margin: EdgeInsets.only(right: 350.0),
                            child: FlatButton(
                              color: Colors.white,
                              minWidth: 1.0,
                              height: 60.0,
                              onPressed: () {},
                              child: Text(
                                'SUBCRIBE',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.blue,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.zero,
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 2.0,
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        '0413-27327463',
                        style: kbottom,
                      ),
                      //padding: EdgeInsets.only(left: 50.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        child: Text(
                      'oceanacademy@gmail.com',
                      style: kbottom,
                    )),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Text(
                      'CONTACT US',
                      style: kbottom,
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        child: Text(
                      'SERVICES',
                      style: kbottom,
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        child: Text(
                      'COURSES',
                      style: kbottom,
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        child: Text(
                      'FAQ',
                      style: kbottom,
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        child: Text(
                      'HELP',
                      style: kbottom,
                    )),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Text(
                      'ABOUT US',
                      style: kbottom,
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        child: Text(
                      'WORK WITH US',
                      style: kbottom,
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        child: Text(
                      'PRIVATE POLICIES',
                      style: kbottom,
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        child: Text(
                      'TERMS AND CONDITIONS',
                      style: kbottom,
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        child: Text(
                      'PRESS ENQUIRES',
                      style: kbottom,
                    )),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialFlatButton(
                icon: FontAwesomeIcons.facebookF,
                onPressed: () {},
              ),
              MaterialFlatButton(
                icon: FontAwesomeIcons.googlePlusG,
                onPressed: () {},
              ),
              MaterialFlatButton(
                icon: FontAwesomeIcons.linkedinIn,
                onPressed: () {},
              ),
              MaterialFlatButton(
                icon: FontAwesomeIcons.twitter,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
