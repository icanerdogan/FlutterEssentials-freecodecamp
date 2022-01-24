import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:freecodecamp/drawer.dart';
import 'package:freecodecamp/pages/home_page.dart';
import 'package:freecodecamp/pages/login_page.dart';
import 'package:freecodecamp/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'name_card_widget.dart';

void main() {
  //WidgetsApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName : (context) => LoginPage(),
        HomePage.routeName : (context) => HomePage()
      },
    );
  }
}
