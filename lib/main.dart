import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/appFunctionalities/about_school.dart';
import 'package:ss_donji_miholjac/appFunctionalities/events.dart';
import 'package:ss_donji_miholjac/appFunctionalities/first_grade.dart';
import 'package:ss_donji_miholjac/appFunctionalities/information_and_contact.dart';
import 'package:ss_donji_miholjac/appFunctionalities/last_grade.dart';
import 'package:ss_donji_miholjac/appFunctionalities/library.dart';
import 'package:ss_donji_miholjac/appFunctionalities/notifications.dart';
import 'package:ss_donji_miholjac/appFunctionalities/program_description.dart';
import 'package:ss_donji_miholjac/appFunctionalities/student_association.dart';
import 'package:ss_donji_miholjac/splash.dart';
import './appFunctionalities/about_school.dart';
import 'all_categories.dart';
import 'appFunctionalities/projects.dart';
import 'appFunctionalities/scedule.dart';
import 'package:hexcolor/hexcolor.dart';
import 'favourites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Srednja škola Donji Miholjac',
        theme: ThemeData(
          canvasColor: HexColor('E5EFF3'),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
              ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const Splash(),
          'aboutSchool': (context) => AboutSchool(),
          'programDescription': (context) => ProgramDescription(),
          'scedule': (context) => Scedule(),
          'events': (context) => Events(),
          'projects': (context) => Projects(),
          'studentAssociation': (context) => StudentAssociation(),
          'firstGrade': (context) => FirstGrade(),
          'lastGrade': (context) => LastGrade(),
          'notifications': (context) => Notifications(),
          'informationAndContact': (context) => InformationAndContact(),
          'library':(context) => Library(),
          'favourites':(context) => Favourites(),
          'allCategories':(context) => AllCategories()
        });
  }
}
