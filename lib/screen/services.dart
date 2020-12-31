import 'package:flutter/material.dart';
import 'package:ocean_live_project/Components/card_design.dart';
import 'package:ocean_live_project/Components/image_to_text.dart';
import 'package:ocean_live_project/Components/navigation_bar.dart';
import 'package:ocean_live_project/Components/teext_to_image.dart';
import 'package:ocean_live_project/screen/footer.dart';

class Service extends StatefulWidget {
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopNavigationBar(
              title: "Services",
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Lorem ipsum dolor sit',
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Wrap(
                children: [
                  ContainerWidget(),
                  ContainerWidget(),
                  ContainerWidget(),
                  ContainerWidget(),
                  ContainerWidget(),
                  ContainerWidget(),
                ],
              ),
            ),
            ImageToText(
                topic: 'Lorem ipsum dolor sit amet',
                content:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                photo: 'images/computer.jpg'),
            TextToImage(
              topic: 'Lorem ipsum dolor sit amet',
              content:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              photo: 'images/computer.jpg',
            ),
            ImageToText(
                topic: 'Lorem ipsum dolor sit amet',
                content:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                photo: 'images/computer.jpg'),
            TextToImage(
              topic: 'Lorem ipsum dolor sit amet',
              content:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              photo: 'images/computer.jpg',
            ),
            SizedBox(
              height: 20.0,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
