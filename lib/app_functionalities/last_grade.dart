import 'package:flutter/material.dart';
import '../models/functionality_screen.dart';

class LastGrade extends StatelessWidget {
  const LastGrade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Završni razredi',
        child: ListView(
          children: const [],
        ));
  }
}
