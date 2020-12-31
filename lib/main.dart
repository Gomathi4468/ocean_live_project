import 'package:flutter/material.dart';
import 'package:ocean_live_project/screen/home_screen.dart';
import 'package:provider/provider.dart';
import 'route/routing.dart';
import 'package:ocean_live_project/screen/menubar.dart';

void main() {
  runApp(OceanLive());
}

class OceanLive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Routing(),
        child: MaterialApp(
          home: Navbar(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
