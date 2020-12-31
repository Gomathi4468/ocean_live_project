import 'package:flutter/material.dart';

class CoursesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(35.0),
        //padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        height: 350.0,
        width: 400.0,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    image: AssetImage('images/pythonimage.jpg'),
                    // width: 350.0,
                    // height: 100.0,
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 15.0,
            // ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Python full package course | E.Kiran | Ocean Academy",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black87,
                ),
              ),
            ),
            // SizedBox(
            //   height: 15.0,
            // ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.schedule,
                    color: Color(0xff3B7EB6),
                  ),
                  Text("1 hr"),
                  Icon(
                    Icons.web_sharp,
                    color: Color(0xff3B7EB6),
                  ),
                  Text("7 sessions"),
                  Icon(
                    Icons.video_call,
                    color: Color(0xff3B7EB6),
                  ),
                  Text("by zoom"),
                  SizedBox(
                    width: 100.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
