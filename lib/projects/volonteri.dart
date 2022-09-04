import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/functionality_screen.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';

class Volunteers extends StatelessWidget {
  const Volunteers({Key? key}) : super(key: key);

  final String _description =
      '''Poštovani,                                           

Osnivanje Volonterskog kluba Srednje škole Donji Miholjac  omogućilo nam je da steknemo bolje vještine za motiviranje mladih u aktivnije uključivanje rješavanja problema lokalne sredine.  Svjesni smo slabih karika trenutnog volontiranja u Donjem Miholjcu i želimo unaprijediti postojeći sustav volontiranja koji trenutno ne dobiva pažnju i potporu koju zaslužuje.

Humanitarni rad Srednje škole Donji Miholjac uvijek je bio prisutan ali unazad nekoliko školskih godina postao je intenzivniji. Dvije godine volonteri djeluju kao izvannastavna aktivnost Srednje škole Donji Miholjac koja trenutno broji oko 50- tak aktivnih članova te im je želja proširiti svoje djelovanje. Priznanje za doprinos u razvoju školskog volonterizma je i dobivanje godišnje volonterske nagrade za Slavoniju i Baranju koju dodjeljuje Volonterski centar Osijek.   

Škola ima razvijenu suradnju sa Volonterskim centrom Osijek s kojima se radi na projektu „Pokreni sebe, promijeni svijet“, dok su profesorica Mirjam Ćosić i pedagoginja Mirta Grozdanić educirani menageri volonterstva. Odrađeni volonterski sati volontera upisuju se u volonterske knjižice kao dokaz njihova humanitarnog djelovanja te im omogućuje daljnji razvoj volonterizma.

Za sva pitanja i sugestije o mogućnoj suradnji javite se na dolje navedene kontakt podatke voditeljici Volonterskog kluba Srednje škole Donji Miholjac pedagoginji Mirti Grozdanić.''';

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Volonteri',
        child: SingleChildScrollView(child: TextBlock(_description)));
  }
}
