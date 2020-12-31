import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ocean_live_project/Components/navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'dart:html';
import 'dart:ui' as ui;
import 'package:google_maps/google_maps.dart' hide Icon, Padding;
import 'package:ocean_live_project/screen/footer.dart';

void main() => runApp(ContactUs());

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  Widget getMap() {
    String htmlId = "7";

    // ignore: undefined_prefixed_name
    dynamic registerViewFactory =
        ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final myLatlng = new LatLng(11.952225916443883, 79.8299675401406);

      final mapOptions = new MapOptions()
        ..zoom = 16
        ..center = new LatLng(11.952225916443883, 79.8299675401406);

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = new GMap(elem, mapOptions);

      Marker(MarkerOptions()
        ..position = myLatlng
        ..map = map
        ..title = 'OceanAcadamey');

      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }

  final selected = TextEditingController();

  List<String> enquery = ['query1', 'query2', 'query3', 'query4'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopNavigationBar(
                title: "Contact Us",
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 150.0, bottom: 130),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.mobileAlt,
                                color: Colors.blue,
                                size: 45,
                              ),
                              SizedBox(width: 10),
                              Text(
                                '+9195625895432',
                                style: TextStyle(
                                  letterSpacing: 1,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff505050),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
                          Row(
                            children: [
                              Icon(
                                Icons.email_outlined,
                                color: Colors.blue,
                                size: 45,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'oceanacademy@gmail.com',
                                style: TextStyle(
                                  letterSpacing: 1,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff505050),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 60),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.mapMarkerAlt,
                                color: Colors.blue,
                                size: 40,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    'No. 2, Karuvadikuppam Main Rd, '
                                    'near GINGER HOTEL, Senthamarai Nagar, '
                                    'Muthialpet, Puducherry, 605003',
                                    style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff505050),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 70),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 400,
                                width: 600,
                                child: getMap(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 150, top: 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('Contact Form',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff505050),
                                  fontSize: 45,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 70, top: 30),
                            child: Container(
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vi'
                                'tae ipsum vitae justo pharetra tempor.'
                                ' Quisque volutpat, nibh vitae',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25,
                                    color: Color(0xff505050)),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            child: Text(
                              'This Enquiry is for',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff505050),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                right: 200, top: 20, bottom: 20),
                            child: DropDownField(
                              itemsVisibleInDropdown: 3,
                              icon: Icon(Icons.question_answer),
                              controller: selected,
                              enabled: true,
                              items: enquery,
                              hintText: 'Select any Enquiry',
                            ),
                          ),
                          Container(
                            child: Text(
                              'Full Name',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff505050)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                right: 200, top: 20, bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Your Name',
                                labelText: 'Name',
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'E-mail Address',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff505050),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                right: 200, top: 20, bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Your Email',
                                labelText: 'Email',
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Your Query',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff505050),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                right: 200, top: 20, bottom: 20),
                            child: TextField(
                              maxLines: 15,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Your Query',
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          RaisedButton(
                            padding: EdgeInsets.only(
                                left: 30, right: 30, top: 20, bottom: 20),
                            splashColor: Colors.white24,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color(0xff0091D2),
                            onPressed: () {},
                            child: Text(
                              '  Submit  ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(height: 100),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
