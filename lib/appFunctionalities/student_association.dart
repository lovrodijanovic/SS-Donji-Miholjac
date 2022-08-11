import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/widgets/functionality_screen.dart';
import 'package:ss_donji_miholjac/models/my_text_button.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';

class StudentAssociation extends StatelessWidget {
  final String celestinaFacebook = 
      'https://www.facebook.com/people/U%C4%8Deni%C4%8Dka-zadruga-Celestina-Srednje-%C5%A1kole-Donji-Miholjac/100057340282677/';

  final String studentAssociation = '''
Školski odbor Srednje škole Donji Miholjac na svojoj je sjednici održanoj 17. 09. 2015. godine donio Odluku o osnutku Učeničke zadruge "Celestina" koja će djelovati pri Srednjoj školi Donji Miholjac. Učenička zadruga "Celestina" dragovoljna je interesna učenička organizacija koja pridonosi postizanju odgojno - obrazovnih i društveno - gospodarskih ciljeva naše škole jer kao oblik izvannastavne aktivnosti učenicima omogućuje stjecanje radno - tehničkog, ekološkog, gospodarskog, društvenog i etno odgoja i obrazovanja te razvoj sposobnosti i korisno provođenje slobodnog vremena. Zadruga  je 02. 11. 2015. godine primljena u članstvo Hrvatske udruge učeničkog zadrugarstva. Učenička zadruge "Celestina" naziv je dobila po gospođi Celestini Roscher koja je tijekom prve polovine 20. stoljeća bila predsjednica Dobrotvornog gospojinskog društva u Donjem Miholjcu i koja se u to vrijeme bavila dobrotvornim radom. Nakon smrti Celestine Rosher njezin sin je u njenu čast dao izgraditi zgradu u kojoj je djelovala Zadužbina Celestine Rosher u kojoj su se do završetka II. svjetskog rata obrazovali učenici skromnijeg materijalnog stanja. U zgradi tadašnje Zadužbine Celestine Roscher danas se nalazi Srednja škola Donji Miholjac. 


Upravna tijela zadruge:

Skupština (čine ju svi članovi zadruge)

Upravni dobor: Zadružni odbor, predsjednik Zadruge i tajnik Zadruge

Predsjednica zadruge: ______
Zamjenica predsjednice: ______
Tajnica: Mirta Falamić-Grozdanić
Zadružni odbor: _______
Voditelji temeljno odgojno-obrazovnih i radnih jedinica, sekcija Zadruge:
Agro: Kornelija Sabolek, mag.ing.agr.
Strojarske: Ivan Kiš, ing.stroj.
Eko: Lovorka Muminović, dipl.oec.
Humanitarne: Kristina Veselovac, prof.matematike
Kulturološko-umjetničke: Zvonimir Falamić, prof.povijesti
Kreativa: Sandra Matković, dipl.oec.

Za više informacije posjetite facebook stranicu udruge.''';

  const StudentAssociation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
      pageTitle: 'Učenička zadruga "Celestina"',
      child: ListView(
        children: [
          TextBlock(studentAssociation),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(bottom: 30, left: 30), child: Icon(Icons.facebook)),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: MyTextButton("Facebook stranica udruge", celestinaFacebook),
              ),
            ],
          ),
          Image.network(
            "http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1698/Image/ZASTAVA.jpg",
            width: 200,
            height: 250,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}


