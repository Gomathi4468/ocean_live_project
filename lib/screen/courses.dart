import 'package:flutter/material.dart';
import 'package:ocean_live_project/Components/courses_widget.dart';
import 'package:ocean_live_project/Components/navigation_bar.dart';
import 'package:ocean_live_project/screen/footer.dart';

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  List<bool> isSelected;
  bool selected = false;
  @override
  void initState() {
    isSelected = [
      true,
      false,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.symmetric(vertical: 80.0),
            //color: Colors.greenAccent,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 850,
                  top: 700,
                  child: Icon(
                    Icons.circle,
                    size: 250.0,
                    color: Color(0xffCFCF00),
                  ),
                ),
                Positioned(
                  left: -150,
                  top: 700,
                  child: Icon(
                    Icons.circle,
                    size: 250.0,
                    color: Color(0xffFD50CB),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TopNavigationBar(
                        title: "Courses",
                      ),
                      Padding(
                        padding: const EdgeInsets.all(60.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: LayoutBuilder(builder: (context, constraints) {
                            return ToggleButtons(
                                focusColor: Colors.white,
                                color: Color(0xff0091d2),
                                borderColor: Colors.white,
                                fillColor: Color(0xff0091d2),
                                borderWidth: 2,
                                selectedBorderColor: Color(0xff0091d2),
                                selectedColor: Colors.white,
                                borderRadius: BorderRadius.circular(30.0),
                                constraints: BoxConstraints.expand(
                                    width: constraints.maxWidth / 2 - 2 * 1.5,
                                    height: 60.0),
                                children: [
                                  Text(
                                    'Online Courses',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text('Offline Courses',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                                onPressed: (int index) {
                                  selected = true;
                                  setState(() {
                                    for (int i = 0;
                                        i < isSelected.length;
                                        i++) {
                                      isSelected[i] = i == index;
                                    }
                                    selected = false;
                                  });
                                },
                                isSelected: isSelected);
                          }),
                        ),
                      ),
                      Wrap(runSpacing: 50.0, children: [
                        CoursesWidget(),
                        CoursesWidget(),
                        CoursesWidget(),
                        CoursesWidget(),
                        CoursesWidget(),
                        CoursesWidget(),
                        CoursesWidget(),
                      ]),
                      Footer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
