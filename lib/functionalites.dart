import 'package:flutter/material.dart';
import 'models/functionality.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

const functionalities = [
  Functionaly(
    id: 'f1',
    title: 'O školi',
    icon: Icon(
      PhosphorIcons.house_line,
      size: 56.0,
    ),
    route: 'aboutSchool'
  ),
  Functionaly(
      id: 'f2',
      title: 'Opis programa',
      icon: Icon(
        PhosphorIcons.book_bookmark,
        size: 56.0,
      ),
      route: 'programDescription'
      ),
  Functionaly(
      id: 'f3',
      title: 'Raspored sati',
      icon: Icon(
        PhosphorIcons.clock,
        size: 56.0,
      ),
      route: 'scedule'
      ),
  Functionaly(
      id: 'f4',
      title: 'Događanja',
      icon: Icon(
        PhosphorIcons.calendar_check,
        size: 56.0,
      ),
      route: 'events'
      ),
  Functionaly(
      id: 'f5',
      title: 'Projekti',
      icon: Icon(
        PhosphorIcons.lightbulb,
        size: 56.0,
      ),
      route: 'projects'
      ),
  Functionaly(
      id: 'f6',
      title: 'Učenička zadruga',
      icon: Icon(
        PhosphorIcons.handshake,
        size: 56.0,
      ),
      route: 'studentAssociation'
      ),
  Functionaly(
      id: 'f7',
      title: 'Upis u prvi razred',
      icon: Icon(
        PhosphorIcons.student,
        size: 56.0,
      ),
      route: 'firstGrade'),
  Functionaly(
      id: 'f8',
      title: 'Završni razredi',
      icon: Icon(
        PhosphorIcons.graduation_cap,
        size: 56.0,
      ),
      route: 'lastGrade'),
  Functionaly(
      id: 'f9',
      title: 'Obavijesti',
      icon: Icon(
        PhosphorIcons.bell,
        size: 56.0,
      ),
      route: 'notifications'),
  Functionaly(
      id: 'f10',
      title: 'Informacije i kontakt',
      icon: Icon(
        PhosphorIcons.info,
        size: 56.0,
      ),
      route: 'informationAndContact'),
];
