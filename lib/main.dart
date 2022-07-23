// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/selection_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Srednja škola Donji Miholjac',
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          accentColor: Colors.lightGreenAccent,
          canvasColor: Color.fromARGB(200, 51, 121, 48),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
              )),
      home: SelectionScreen(),
    );
  }
}
