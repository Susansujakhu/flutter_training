import 'package:flutter/material.dart';
import 'package:settings_ui/screens/detiledPage.dart';
import 'package:settings_ui/screens/firstpage.dart';
import 'package:settings_ui/screens/home.dart';
import 'package:flutter/widgets.dart';
import 'package:settings_ui/screens/homepage.dart';
import 'package:settings_ui/screens/networkcall.dart';
import 'package:settings_ui/screens/secondpage.dart';
import 'package:settings_ui/screens/thirdpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/details": (context) => DetailedPage()},

      // routes: {
      //   "/firstPage": (context) => FirstPage(),
      //   "/secondPage": (context) => SecondPage(),
      //   "/thirdPage": (context) => ThirdPage(),
      // },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
