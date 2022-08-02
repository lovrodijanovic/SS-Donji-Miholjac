// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/appFunctionalities/about_school.dart';
import 'package:ss_donji_miholjac/appFunctionalities/first_grade.dart';
import 'package:ss_donji_miholjac/appFunctionalities/information_and_contact.dart';
import 'package:ss_donji_miholjac/appFunctionalities/program_description.dart';
import 'package:ss_donji_miholjac/appFunctionalities/student_association.dart';
import 'package:ss_donji_miholjac/selection_screen.dart';
import './appFunctionalities/about_school.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Srednja škola Donji Miholjac',
        theme: ThemeData(
            canvasColor: Color.fromARGB(223, 75, 202, 128),
            fontFamily: 'Raleway',
            textTheme: ThemeData.light().textTheme.copyWith(
                  bodyText1: TextStyle(
                    color: Color.fromRGBO(20, 51, 51, 1),
                  ),
                  bodyText2: TextStyle(
                    color: Color.fromRGBO(20, 51, 51, 1),
                  ),
                ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.yellow).copyWith(secondary: Colors.lightGreenAccent)),
        home: SelectionScreen());
  }
}
