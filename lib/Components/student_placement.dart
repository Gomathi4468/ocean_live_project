import 'package:flutter/material.dart';
import 'package:ocean_live_project/Components/main_title_widget.dart';
import 'package:ocean_live_project/Components/comment.dart';

class StudentPlacement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              MainTitleWidget(
                title: "Our student got placement",
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
            height: 50.0,
          ),
          Wrap(
            spacing: 60.0,
            runSpacing: 100.0,
            children: [
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/accenture.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/fb.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/Google.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/HCL.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/Lenovo.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/netflix.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/tcs.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/accenture.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/fb.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/Google.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/HCL.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/Lenovo.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/netflix.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/tcs.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/accenture.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/fb.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/Google.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/HCL.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/Lenovo.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/netflix.png',
              ),
              CompanyLogo(
                companyLogoImage: 'images/Company_logo/tcs.png',
              ),
            ],
          ),
          SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }
}

class CompanyLogo extends StatelessWidget {
  final String companyLogoImage;
  CompanyLogo({this.companyLogoImage});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Image.asset(
      companyLogoImage,
      height: 50,
      width: 200.0,
    ));
  }
}
