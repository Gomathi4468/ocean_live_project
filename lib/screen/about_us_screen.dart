import 'package:flutter/material.dart';
import 'package:ocean_live_project/Components/container_widget.dart';
import 'package:ocean_live_project/Components/navigation_bar.dart';
import 'package:ocean_live_project/Components/navigation_bar.dart';
import 'package:ocean_live_project/screen/footer.dart';

class AboutUs extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            TopNavigationBar(
              title: "About Us",
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet',
                          style: TextStyle(
                              color: Color(0xff0091d2),
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black45),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                20.0,
                              )),
                              width: 450.0,
                              height: 400.0,
                              margin: EdgeInsets.fromLTRB(200.0, 0.0, 0.0, 0.0),
                              //padding:
                              //EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                              child: Image(
                                image: AssetImage('images/lap.jpg'),
                              ),
                            ),
                            Container(
                              width: 400.0,
                              color: Color(0xff0091d2),
                              margin:
                                  EdgeInsets.fromLTRB(50.0, 150.0, 0.0, 0.0),
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),
                              child: Image(
                                image: AssetImage('images/lap.jpg'),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Column(
              children: [
                Text(
                  "Meet our Mentors",
                  style: TextStyle(
                      color: Color(0xff0091d2),
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Wrap(children: [
              ContainerWidget(),
              ContainerWidget(),
              ContainerWidget(),
              ContainerWidget(),
              ContainerWidget(),
              ContainerWidget(),
              ContainerWidget(),
              ContainerWidget(),
              ContainerWidget(),
              ContainerWidget(),
            ]),
            Footer(),
          ],
        ),
      ),
    );
  }
}
