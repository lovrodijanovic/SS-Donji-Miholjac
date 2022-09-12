import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/my_text_button.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';
import '../models/functionality_screen.dart';

class Scedule extends StatelessWidget {
  const Scedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Raspored',
        child: ListView(
          children: const [
            TextBlock('Dragi učenici, raspored sati možete pronaći pritiskom na link ispod'),
            MyTextButton('Raspored', 'https://sites.google.com/view/rasporedsdm/kalendar-%C5%A1kole')
          ],
        ));
  }
}