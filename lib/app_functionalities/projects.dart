import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/functionality_screen.dart';
import 'package:ss_donji_miholjac/models/project_buttons.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Projekti',
        child: ListView(
          children: [
            ProjectButton('EPAS škola', 'epas'),
            ProjectButton('eTwinning', 'eTwinning'),
            ProjectButton('Financijska pismenost', 'financialLiteracy'),
            ProjectButton('Digitalni časopis', 'digitalMagazine'),
            ProjectButton('Volonteri', 'volunteers'),
            ProjectButton('Program potpore napredovanju i edukaciji',
                'advancementSupportProgram'),
            ProjectButton('Školske pčele medarice', 'schoolBees'),
            ProjectButton('Međunarodna suradnja', 'internationalCooperation'),
          ],
        ));
  }
}
