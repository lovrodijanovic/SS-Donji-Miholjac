import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/functionality_screen.dart';

class StudentAssociation extends StatelessWidget {
  const StudentAssociation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
      pageTitle: 'Učenička zadruga "Celestina"',
      child: ListView(
        children: [
          Container(
              padding: const EdgeInsets.all(20),
              child: const Card(
                  child: Text(
                      'Školski odbor Srednje škole Donji Miholjac na svojoj je sjednici održanoj 17. 09. 2015. godine donio Odluku o osnutku Učeničke zadruge "Celestina" koja će djelovati pri Srednjoj školi Donji Miholjac. Učenička zadruga "Celestina" dragovoljna je interesna učenička organizacija koja pridonosi postizanju odgojno - obrazovnih i društveno - gospodarskih ciljeva naše škole jer kao oblik izvannastavne aktivnosti učenicima omogućuje stjecanje radno - tehničkog, ekološkog, gospodarskog, društvenog i etno odgoja i obrazovanja te razvoj sposobnosti i korisno provođenje slobodnog vremena. Zadruga  je 02. 11. 2015. godine primljena u članstvo Hrvatske udruge učeničkog zadrugarstva. Učenička zadruge "Celestina" naziv je dobila po gospođi Celestini Roscher koja je tijekom prve polovine 20. stoljeća bila predsjednica Dobrotvornog gospojinskog društva u Donjem Miholjcu i koja se u to vrijeme bavila dobrotvornim radom. Nakon smrti Celestine Rosher njezin sin je u njenu čast dao izgraditi zgradu u kojoj je djelovala Zadužbina Celestine Rosher u kojoj su se do završetka II. svjetskog rata obrazovali učenici skromnijeg materijalnog stanja. U zgradi tadašnje Zadužbine Celestine Roscher danas se nalazi Srednja škola Donji Miholjac.'))),
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
