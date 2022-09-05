import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/functionality_screen.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';

class FinancialLiteracy extends StatelessWidget {
  final String _financijskaPismenost =
      '''Projekt financijske pismenosti pokrenuli smo u skladu s potrebama suvremenog društva, a danas se savršeno nadopunjuje na međupredmetnu temu poduzetništva. Projekt je započeo školske godine 2015./16. kada je pokretač projekta Antonio Čmelak pripremio i održao radionice za završne razrede s temom "Upravljanje osobnim financijama" te pripremio prezentaciju na temu "Zaštita prava potrošača" povodom Dana prava potrošača i s uputama ih proslijedio svim razrednicima i uredio prigodne plakata u hodniku škole.

Program je nadopunjen školske godine 2016./17. s temom "Teenager financije" za sve učenike 2.razreda, a od školske godine 2017./18. se provodu u punom obliku kao i danas. Tijekom rujna 2017. godine nabavilo smo besplatne primjerke udžbenika "Moj nova, moja budućnost"  instituta za financijsko obrazovanje "Štedopis" i podijelili ga svim učenicima škole. Od tada završni razredi po završetku školovanja vraćaju svoj primjerak udžbenika u školu, a mi ih proslijeđujemo učenicima prvih razreda.

Osim besplatnog udžbenika obogatili smo sadržaje koje nudimo svim razredima naše škole a sastoje se od različith tema prilagođenih dobi učenika. U prvom razredu nastavnica Sandra Matković svim razredima održi na satu razrednika jednu radionicu s temom "Prava potrošača", a voditelj projekta Antonio Čmelak održi po dvije radionice u svim učenicima iz 2., 3. i 4. razreda. Teme koje se obrađuju iz područja financijske pismenosti su "Teenager financije" i "Kartice, banke, naše želje i mogučnosti" u drugim razredima, "E-plaćanje, štednja osiguranje i kućni proračun" u svim trećim razredima te "Upravljanje osobnim financijama" u trećim razredima trogodišnjih zanimanja te "Krediti i inflacija u trećim razredima četverogodišnjih zanimanja. U četvrtim razredima održe se radionice s temama "Upravljanje osobnim financijama" i "Kamatni račun, upravljanje dugom".

Povodom međunarodnog dana štednje 2018. godine, projekt smo proširili i izvan zidova naše škole u suradnji s Osnovnom školom August Harambašić iz Donjeg Miholjca. Voditelj projekta prirpemio je radionicu za upoznavanje s osnovama novca i financija te kviz milijunaš u kojem su učenici mogli osvojiti čokoladne Eure. Neposredno prije 31. listopada održane su tri radionice za učenike razredne nastave i to u dva 4. razreda i jednom 3. razredu.

Tijekom proljeća 2022. godine program financijske pismenosti proširen je i na Osnovnu školu August Harambašić iz D.Miholjca kada je voditelj projekta Antonio Čmelak u suradnjis  nastavnikom geografije Mariom Pintarićem proveo niz predavanaj prilagođenih učenicima od 5. do 8. razreda s naglaskom na ifnormacije o uvođenju eura i dogovaranje nastavka suradnje kroz programe poduzetništva.
Na web stranici škole možete pronaći prezentacije za navedene teme iz financijske pismenosti.''';

  const FinancialLiteracy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Financijska pismenost',
        child: SingleChildScrollView(child: TextBlock(_financijskaPismenost)));
  }
}
