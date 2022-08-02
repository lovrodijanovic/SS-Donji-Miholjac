import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/functionality_screen.dart';

class ProgramDescription extends StatelessWidget {
  const ProgramDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
      pageTitle: 'Programi i zanimanja',
      child: ListView(children: [
        Column(children: [
          Container(
              padding: const EdgeInsets.all(20),
              child: const Card(
                  child: Text(
                      'Preko ikone možete u PDF formatu preuzeti popis programa i zanimanja po obrazovnim sektorima Srednje škole Donji Miholjac.'))),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Programi i zanimanja u našoj školi')),
          Container(
              padding: const EdgeInsets.all(20),
              child: const Card(
                  child: Text(
                      'U dokumentima koji su priloženi možete pregledati nastavne planove za pojedina zanimanja za koja se mogu obrazovati učenici u Srednjoj školi Donji Miholjac. Proučite planove, pronađite se u određenom zanimanju i vidimo se na upisima!! Za nastavnii program koji vas zanima kliknite na njegovu ikonu.'))),
          const Card(child: Text('Četverogodišnja zanimanja')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Opća gimnazija')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Komercijalist')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Turističko hotelijerski komercijalist')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Agrotehničar')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Strojarski računalni tehničar')),
          const Card(child: Text('Trogodišnja zanimanja')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Prodavač')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Cvjećar')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Poljoprivredni gospodarstvenik')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('CNC operater')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Automehaničar')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Strojobravar')),
        ]),
      ]),
    );
  }
}
