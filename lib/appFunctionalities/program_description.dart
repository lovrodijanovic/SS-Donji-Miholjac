import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/functionality_screen.dart';

class ProgramDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
      pageTitle: 'Programi i zanimanja',
      child: ListView(children: [
        Column(children: [
          Container(
              padding: EdgeInsets.all(20),
              child: const Card(
                  child: Text(
                      'Preko ikone možete u PDF formatu preuzeti popis programa i zanimanja po obrazovnim sektorima Srednje škole Donji Miholjac.'))),
          ElevatedButton(
              onPressed: () {},
              child: Text('Programi i zanimanja u našoj školi'),
              style: ElevatedButton.styleFrom()),
          Container(
              padding: EdgeInsets.all(20),
              child: const Card(
                  child: Text(
                      'U dokumentima koji su priloženi možete pregledati nastavne planove za pojedina zanimanja za koja se mogu obrazovati učenici u Srednjoj školi Donji Miholjac. Proučite planove, pronađite se u određenom zanimanju i vidimo se na upisima!! Za nastavnii program koji vas zanima kliknite na njegovu ikonu.'))),
          Card(child: Text('Četverogodišnja zanimanja')),
          ElevatedButton(
              onPressed: () {},
              child: Text('Opća gimnazija'),
              style: ElevatedButton.styleFrom()),
          ElevatedButton(
              onPressed: () {},
              child: Text('Komercijalist'),
              style: ElevatedButton.styleFrom()),
          ElevatedButton(
              onPressed: () {},
              child: Text('Turističko hotelijerski komercijalist'),
              style: ElevatedButton.styleFrom()),
          ElevatedButton(
              onPressed: () {},
              child: Text('Agrotehničar'),
              style: ElevatedButton.styleFrom()),
          ElevatedButton(
              onPressed: () {},
              child: Text('Strojarski računalni tehničar'),
              style: ElevatedButton.styleFrom()),
          Card(child: Text('Trogodišnja zanimanja')),
          ElevatedButton(
              onPressed: () {},
              child: Text('Prodavač'),
              style: ElevatedButton.styleFrom()),
          ElevatedButton(
              onPressed: () {},
              child: Text('Cvjećar'),
              style: ElevatedButton.styleFrom()),
          ElevatedButton(
              onPressed: () {},
              child: Text('Poljoprivredni gospodarstvenik'),
              style: ElevatedButton.styleFrom()),
          ElevatedButton(
              onPressed: () {},
              child: Text('CNC operater'),
              style: ElevatedButton.styleFrom()),
          ElevatedButton(
              onPressed: () {},
              child: Text('Automehaničar'),
              style: ElevatedButton.styleFrom()),
          ElevatedButton(
              onPressed: () {},
              child: Text('Strojobravar'),
              style: ElevatedButton.styleFrom()),
        ]),
      ]),
    );
  }
}
