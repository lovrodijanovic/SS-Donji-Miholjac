import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/functionality_screen.dart';

class AboutSchool extends StatelessWidget {
  static const String aboutSchool =
      "Srednja škola Donji Miholjac javna je ustanova koja obavlja svoju djelatnost u skladu s Aktom o osnivanju škole i rješenjima ministarstva nadležnog za poslove obrazovanja i odobrenja izvođenja programa. Službeno je registrirana 12. studenog 1992. godine i pod ovim nazivom djeluje kao pravni sljedbenik Srednjoškolskog centra 'Braća Ribar' Donji Miholjac. Škola je polivalentna jer obrazujemo učenike u četiri područja kako za trogodišnja tako i četverogodišnja zanimanja i programe. Više o školi potražite na dijelu 'Povijest' i 'Nastava'. U prilogu se nalaze prezentacije o našem gradu, a video prikaze škole možete potražiti na Youtube kanalu naše škole.";

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'O školi',
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                child: Card(child: Text(aboutSchool))),
            ElevatedButton(
                onPressed: () {},
                child: Text('Povijest'),
                style: ElevatedButton.styleFrom()),
            ElevatedButton(onPressed: () {}, child: Text('Kontakti')),
            ElevatedButton(onPressed: () {}, child: Text('Dokumenti škole')),
            ElevatedButton(onPressed: () {}, child: Text('Knjižnica')),
            ElevatedButton(onPressed: () {}, child: Text('Godišnjaci')),
            ElevatedButton(onPressed: () {}, child: Text('Razredi')),
            ElevatedButton(onPressed: () {}, child: Text('Djelatnici'))
          ],
        ));
  }
}
