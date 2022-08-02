import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/functionality_screen.dart';

class FirstGrade extends StatelessWidget {
  const FirstGrade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Prvi razredi',
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                child: const Card(
                    child: Text(
                        'Poštovani. Na ovom mjestu možete pronaći u prilozima natječaje raspisane za upis u prvi razred kao i sve ostale važne informacije potrebne za donošenje odluke o izboru za upis u prvi razred i samu proceduru upisa.'))),
            Container(
                padding: const EdgeInsets.all(20),
                child: const Card(
                    child: Text('UPISI U 1. RAZRED ŠKOLSKE GODINE 2022./23.'))),
            Container(
                padding: const EdgeInsets.all(20),
                child: const Card(
                    child: Text(
                        'Dragi učenici 8. razreda i Vaši roditelji. Na ovom mjestu možete pronaći sve informacije potrebne za donošenje odluke o nastavku školovanja. Kako se bude približavao trenutak samih upisa moći će te pronaći sve više korisnih informacija koje će Vam olakšati odluku koji program i zanimanje želite odabrati u našoj školi u kojoj će te upravo vi biti prvi razredi u našim novim prostorima suvremeno opremljene zgrade i sportske dvorane. Natječaj za upis u 1. razred u školskoj godini 2022. / 23. pogledajte na ovoj poveznici.'))),
          ],
        ));
  }
}
