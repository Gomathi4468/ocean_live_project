import 'package:flutter/material.dart';

import 'badge_widget.dart';
import 'main_title_widget.dart';

class MainBadgeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7F7F7),
      child: Column(children: [
        SizedBox(
          height: 30.0,
        ),
        MainTitleWidget(
          title: "A Better Way To Learn",
        ),
        SizedBox(
          height: 50.0,
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: BadgeWidget(
                  icon: Icons.account_balance,
                  heading: "Excellent Teachers",
                  title: "Lorem ipsum dolor sit amet",
                ),
              ),
              Expanded(
                child: BadgeWidget(
                  icon: Icons.account_balance,
                  heading: "Excellent Teachers",
                  title: "Lorem ipsum dolor sit amet",
                ),
              ),
              Expanded(
                child: BadgeWidget(
                  icon: Icons.account_balance,
                  heading: "Excellent Teachers",
                  title: "Lorem ipsum dolor sit amet",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        )
      ]),
    );
  }
}
