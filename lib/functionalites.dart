import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'models/functionality.dart';

List<Functionality> functionalities = [
  Functionality(
      'f1',
      'Opće informacije',
      SvgPicture.asset(
        'assets/images/high_school.svg',
        fit: BoxFit.fitHeight,
      ),
      'aboutSchool'),
  Functionality(
      'f2',
      'Programi i zanimanja',
      SvgPicture.asset('assets/images/programi_zanimanja.svg',
          fit: BoxFit.fitHeight),
      'programDescription'),
  Functionality(
      'f3',
      'Raspored',
      SvgPicture.asset('assets/images/raspored.svg'),
      'scedule'),
  Functionality(
      'f4',
      'Događanja',
      SvgPicture.asset('assets/images/dogadanja.svg'),
      'events'),
  Functionality(
      'f5',
      'Projekti',
      SvgPicture.asset('assets/images/projekti.svg'),
      'projects'),
  Functionality(
      'f6',
      'Učenička zadruga',
      SvgPicture.asset('assets/images/udruga.svg'),
      'studentAssociation'),
  Functionality(
      'f7',
      'Upis u prvi razred',
      SvgPicture.asset('assets/images/upisi_u_prvi_razred.svg'),
      'firstGrade'),
  Functionality(
      'f8',
      'Završni razredi',
      SvgPicture.asset('assets/images/zavrsni_razredi.svg'),
      'lastGrade'),
  Functionality(
      'f9',
      'Oglasna ploča',
      SvgPicture.asset('assets/images/oglasna_ploca.svg'),
      'notifications'),
  Functionality(
      'f10',
      'Informacije i kontakt, knjižnica',
      SvgPicture.asset('assets/images/knjiznica.svg'),
      'informationAndContact'),
];

List<Functionality> favouriteFunctionalities = [];