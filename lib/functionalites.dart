import 'package:flutter/material.dart';
import 'models/functionality.dart';

List<Functionaly> functionalities = [
  Functionaly(
      id: 'f1',
      title: 'Opće informacije',
      image: Image.asset(
        'assets/images/high_school.png',
        fit: BoxFit.fitHeight,
      ),
      route: 'aboutSchool'),
  Functionaly(
      id: 'f2',
      title: 'Programi i zanimanja',
      image: Image.asset('assets/images/programi_zanimanja.png',
          fit: BoxFit.fitHeight),
      route: 'programDescription'),
  Functionaly(
      id: 'f3',
      title: 'Raspored',
      image: Image.asset('assets/images/raspored.png'),
      route: 'scedule'),
  Functionaly(
      id: 'f4',
      title: 'Događanja',
      image: Image.asset('assets/images/dogadanja.png'),
      route: 'events'),
  Functionaly(
      id: 'f5',
      title: 'Projekti',
      image: Image.asset('assets/images/projekti.png'),
      route: 'projects'),
  Functionaly(
      id: 'f6',
      title: 'Učenička zadruga',
      image: Image.asset('assets/images/udruga.png'),
      route: 'studentAssociation'),
  Functionaly(
      id: 'f7',
      title: 'Upis u prvi razred',
      image: Image.asset('assets/images/upisi_u_prvi_razred.png'),
      route: 'firstGrade'),
  Functionaly(
      id: 'f8',
      title: 'Završni razredi',
      image: Image.asset('assets/images/zavrsni_razredi.png'),
      route: 'lastGrade'),
  Functionaly(
      id: 'f9',
      title: 'Oglasna ploča',
      image: Image.asset('assets/images/oglasna_ploca.png'),
      route: 'notifications'),
  Functionaly(
      id: 'f10',
      title: 'Informacije i kontakt, knjižnica',
      image: Image.asset('assets/images/knjiznica.png'),
      route: 'informationAndContact'),
];
