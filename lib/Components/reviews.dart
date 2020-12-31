import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ocean_live_project/Components/main_title_widget.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ReviewsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 150.0,
            left: -30,
            child: Icon(
              Icons.circle,
              size: 400.0,
              color: Colors.red[200],
            ),
          ),
          Positioned(
            left: 620,
            top: 200,
            child: Icon(
              Icons.circle,
              size: 200.0,
              color: Colors.blue[200],
            ),
          ),
          Positioned(
            right: 500,
            top: 100,
            child: Icon(
              Icons.circle,
              size: 120.0,
              color: Colors.deepPurple[400],
            ),
          ),
          Positioned(
            right: -100,
            top: -150,
            child: Text(
              '°',
              style: TextStyle(
                  fontSize: 500.0,
                  color: Colors.green[400],
                  fontWeight: FontWeight.normal),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainTitleWidget(
                    title: "Reviews",
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 80.0,
                    ),
                    ReviewLable(
                      color: Colors.green[300],
                    ),
                    ReviewLable(
                      color: Colors.purple[300],
                    ),
                    ReviewLable(
                      color: Colors.blue[300],
                    ),
                    ReviewLable(
                      color: Colors.green[300],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StarRating(
                    ratings: '25',
                    ratingSite: 'Google Review',
                  ),
                  SizedBox(
                    width: 200.0,
                  ),
                  StarRating(
                    ratings: '18',
                    ratingSite: 'Justdial Review',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ReviewLable extends StatelessWidget {
  ReviewLable({this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      height: 250.0,
      width: 600.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  FontAwesomeIcons.quoteRight,
                  color: Colors.white,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ReadMoreText(
                      'Lorem ipsum dolor sit amet,m et vel justo. Class apteur adipiscing elit. Donec s apteur adipiscing elit. Donec ligula ipsum, tempusmet,m et vel justo. Class apteur adipiscing elit. Donec ligula ipsum, tempusmet,m et vel justo., posuere at justo vitae, scelerisque molestie velit. Nunc id nisl ut nunc facilisis elementum et vel justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      trimLines: 1,
                      colorClickableText: Colors.white,
                      moreStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  FontAwesomeIcons.quoteRight,
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '- Username, Google Review',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  StarRating({this.ratings, this.ratingSite});
  final String ratings;
  final String ratingSite;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.yellow,
          height: 350,
        ),
        Container(
          height: 150.0,
          width: 150.0,
          decoration: BoxDecoration(
            color: Color(0xff4285B7),
            borderRadius: BorderRadius.circular(75.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                ratings,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Ratings',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 190.0, bottom: 50.0),
          child: Icon(
            Icons.star_half,
            color: Colors.yellow[700],
            size: 40,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 130.0, bottom: 160.0),
          child: Icon(
            Icons.star,
            color: Colors.yellow[700],
            size: 40,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 200.0),
          child: Icon(
            Icons.star,
            color: Colors.yellow[700],
            size: 40,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 130.0, bottom: 160.0),
          child: Icon(
            Icons.star,
            color: Colors.yellow[700],
            size: 40,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 190.0, bottom: 50.0),
          child: Icon(
            Icons.star,
            color: Colors.yellow[700],
            size: 40,
          ),
        ),
        Positioned(
          top: 250.0,
          child: Column(
            children: [
              Text(
                ratingSite,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xff003A5D),
                ),
              ),
              SmoothStarRating(
                  allowHalfRating: false,
                  onRated: (v) {},
                  starCount: 5,
                  rating: 4.9,
                  size: 40.0,
                  isReadOnly: true,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  color: Colors.yellow[700],
                  borderColor: Colors.yellow[700],
                  spacing: 0.0),
            ],
          ),
        ),
      ],
    );
  }
}
