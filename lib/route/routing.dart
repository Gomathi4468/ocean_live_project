import 'package:flutter/material.dart';
import 'package:ocean_live_project/screen/about_us_screen.dart';
import 'package:ocean_live_project/screen/home_screen.dart';

class Routing extends ChangeNotifier {
  Widget route = Home();
  void updateRouting({Widget widget}) {
    route = widget;
    notifyListeners();
  }
}
