import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ss_donji_miholjac/app_functionalities/about_school.dart';
import 'package:ss_donji_miholjac/app_functionalities/events.dart';
import 'package:ss_donji_miholjac/app_functionalities/first_grade.dart';
import 'package:ss_donji_miholjac/app_functionalities/information_and_contact.dart';
import 'package:ss_donji_miholjac/app_functionalities/last_grade.dart';
import 'package:ss_donji_miholjac/app_functionalities/library.dart';
import 'package:ss_donji_miholjac/app_functionalities/notifications.dart';
import 'package:ss_donji_miholjac/app_functionalities/program_description.dart';
import 'package:ss_donji_miholjac/app_functionalities/student_association.dart';
import 'package:ss_donji_miholjac/projects/digitalni_casopis_aktiva_trgovine.dart';
import 'package:ss_donji_miholjac/projects/eTwinning.dart';
import 'package:ss_donji_miholjac/projects/epas_skola.dart';
import 'package:ss_donji_miholjac/projects/financijska_pismenost.dart';
import 'package:ss_donji_miholjac/projects/medunarodna_suradnja.dart';
import 'package:ss_donji_miholjac/projects/program_potpore_napredovanju.dart';
import 'package:ss_donji_miholjac/projects/skolske_pcele_medarice.dart';
import 'package:ss_donji_miholjac/projects/volonteri.dart';
import 'package:ss_donji_miholjac/widgets/splash.dart';
import './app_functionalities/about_school.dart';
import 'widgets/all_categories.dart';
import 'app_functionalities/projects.dart';
import 'app_functionalities/scedule.dart';
import 'package:hexcolor/hexcolor.dart';
import 'widgets/favourites.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
          'aboutSchool': (context) => const AboutSchool(),
          'programDescription': (context) => const ProgramDescription(),
          'scedule': (context) => const Scedule(),
          'events': (context) => const Events(),
          'projects': (context) => const Projects(),
          'studentAssociation': (context) => const StudentAssociation(),
          'firstGrade': (context) => FirstGrade(),
          'lastGrade': (context) => const LastGrade(),
          'notifications': (context) => const Notifications(),
          'informationAndContact': (context) => const InformationAndContact(),
          'library': (context) => Library(),
          'favourites': (context) => Favourites(),
          'allCategories': (context) => AllCategories(),
          'epas': (context) => const EpasSkola(),
          'eTwinning': (context) => const ETwinning(),
          'financialLiteracy': (context) => FinancialLiteracy(),
          'digitalMagazine': (context) => const DigitalMagazine(),
          'volunteers': (context) => const Volunteers(),
          'advancementSupportProgram': (context) =>
              const AdvancementSupportProgram(),
          'schoolBees': (context) => const SchoolBees(),
          'internationalCooperation': (context) =>
              const InternationalCooperation(),
        });
  }
}
