import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/my_text_button.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';
import '../models/functionality_screen.dart';

class LastGrade extends StatelessWidget {
  const LastGrade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Završni razredi',
        child: ListView(
          children: const [
            TextBlock('Dragi učenici, na likovima ispod možete pronaći informacije vezane za državnu maturu i završne ispite.'),
            MyTextButton('Državna matura', 'http://ss-donji-miholjac.skole.hr/skola/dr_avna_matura_informacije'),
            MyTextButton('Završni ispiti', 'http://ss-donji-miholjac.skole.hr/skola/dr_avna_matura_informacije/zavr_ni_ispiti')
          ],
        ));
  }
}
