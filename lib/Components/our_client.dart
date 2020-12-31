import 'package:flutter/material.dart';
import 'package:ocean_live_project/Components/comment.dart';
import 'package:ocean_live_project/Components/main_title_widget.dart';

class OurClient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              MainTitleWidget(
                title: "Our Client",
              ),
              SizedBox(
                height: 40.0,
              ),
              TextWidget(
                title:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula ipsum, tempus in ultricies id, sollicitudin eleifend ante. Morbi vitae ex quis nibh elementum tempus. Etiam lectus metus, posuere at justo vitae, scelerisque molestie velit. Nunc id nisl ut nunc facilisis elementum et vel justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos ",
              ),
            ],
          ),
          SizedBox(
            height: 100.0,
          ),
          Wrap(
            spacing: 60.0,
            runSpacing: 100.0,
            children: [
              CollegeLogo(
                collegeLogoImage: 'images/college_logo/PEC.jpg',
              ),
              CollegeLogo(collegeLogoImage: 'images/college_logo/CK.jpg'),
              CollegeLogo(collegeLogoImage: 'images/college_logo/IIM.png'),
              CollegeLogo(
                  collegeLogoImage: 'images/college_logo/Mailam college.png'),
              CollegeLogo(collegeLogoImage: 'images/college_logo/MIT.png'),
              CollegeLogo(collegeLogoImage: 'images/college_logo/NIT.png'),
              CollegeLogo(
                  collegeLogoImage: 'images/college_logo/Pondy_Univ_logo.png'),
              CollegeLogo(
                  collegeLogoImage: 'images/college_logo/Panimalar.png'),
              CollegeLogo(
                  collegeLogoImage:
                      'images/college_logo/Rajlakshmi Engineering college.jpg'),
              CollegeLogo(collegeLogoImage: 'images/college_logo/Sastra.png'),
              CollegeLogo(collegeLogoImage: 'images/college_logo/SMVEC.png'),
              CollegeLogo(
                  collegeLogoImage: 'images/college_logo/Sri Ramanujan.png'),
              CollegeLogo(
                  collegeLogoImage:
                      'images/college_logo/Vels_University_logo.png'),
              CollegeLogo(
                  collegeLogoImage:
                      'images/college_logo/Sri Meenatchi Sundarrajan.jpg'),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}

class CollegeLogo extends StatelessWidget {
  final String collegeLogoImage;
  CollegeLogo({this.collegeLogoImage});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Image.asset(
      collegeLogoImage,
      width: 200,
    ));
  }
}
