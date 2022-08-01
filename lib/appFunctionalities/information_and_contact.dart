import 'package:flutter/material.dart';
import '../functionality_screen.dart';

class InformationAndContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Informacije i kontakt',
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                child: Card(
                    child:
                        Text('Adresa: Vukovarska 84, 31540 Donji Miholjac'))),
            Container(
                padding: EdgeInsets.all(20),
                child: Card(
                    child: Text(
                        'Brojevi telefona: Ravnatelj: 031 / 631 - 983, Tajništvo: 031 / 631 - 049, Računovodstvo: 031 / 630 - 970, Administracija: 031 / 633 - 156'))),
            Container(
                padding: EdgeInsets.all(20),
                child: Card(
                    child: Text(
                        'Opći podaci: IBAN: HR5323600001502689078, OIB: 04017904699, WEB: www.ss-donji-miholjac.skole.hr, E-MAIL: ured@ss-donji-miholjac.skole.hr'))),
            Image.network(
                'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/29/Image/lokacija%20skole2.jpg')
          ],
        ));
  }
}
