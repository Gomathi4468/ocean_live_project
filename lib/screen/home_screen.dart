import 'package:flutter/material.dart';
import 'package:ocean_live_project/Components/how_it_works.dart';
import 'package:ocean_live_project/Components/our_client.dart';
import 'package:ocean_live_project/Components/reviews.dart';
import 'package:ocean_live_project/Components/slider_widget.dart';
import 'package:ocean_live_project/Components/main_badget_widget.dart';
import 'package:ocean_live_project/Components/student_placement.dart';
import 'package:ocean_live_project/Components/upcoming_course_widget.dart';
import 'package:ocean_live_project/screen/footer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SliderWidget(),
          MainBadgeWidget(),
          UpcomingCourse(),
          StudentPlacement(),
          ReviewsSection(),
          OurClient(),
          HowItWorks(),
          Footer(),
        ],
      ),
    );
  }
}
