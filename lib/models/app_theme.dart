import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

var appTheme = ThemeData(
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
);
