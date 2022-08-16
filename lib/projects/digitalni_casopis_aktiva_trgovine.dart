import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ss_donji_miholjac/models/functionality_screen.dart';
import 'package:ss_donji_miholjac/models/my_text_button.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';

class DigitalMagazine extends StatelessWidget {
  const DigitalMagazine({Key? key}) : super(key: key);

  final String description =
      'Od školske godine 2017./2018. aktiv ekonomije i trgovine objavljuje svoj digitalni časopis. Glavni urednik je Antonio Čmelak, dok svi ostali članovi aktiva sudjeluju kao suradnici sa svojim tekstovima i fotografijama. Časopis godišnje izlazi sa 4-5 brojeva, a cilj mu je promovirati zanimanja prodavača i komercijalista te prikazati aktivnosti koje provode članovi aktiva, ali i učenici iz ova dva zanimanja. Svaki pojedinačni broj možete pregledati klikom na fotografiju naslovnice, a sve brojeve možete pronaći na sljedećem linku.';

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Digitalni časopis aktiva trgovine',
        child: ListView(children: [
          TextBlock(description),
          MyTextButton('Svi časopisi',
              'https://cantonio385.wixsite.com/skole/copy-of-nastavnici'),
        ]));
  }
}
