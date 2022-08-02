import 'package:flutter/material.dart';
import '../functionality_screen.dart';

class InformationAndContact extends StatelessWidget {
  const InformationAndContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Informacije i kontakt',
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                child: const Card(
                    child:
                        Text('Adresa: Vukovarska 84, 31540 Donji Miholjac'))),
            Container(
                padding: const EdgeInsets.all(20),
                child: const Card(
                    child: Text(
                        'Brojevi telefona: Ravnatelj: 031 / 631 - 983, Tajništvo: 031 / 631 - 049, Računovodstvo: 031 / 630 - 970, Administracija: 031 / 633 - 156'))),
            Container(
                padding: const EdgeInsets.all(20),
                child: const Card(
                    child: Text(
                        'Opći podaci: IBAN: HR5323600001502689078, OIB: 04017904699, WEB: www.ss-donji-miholjac.skole.hr, E-MAIL: ured@ss-donji-miholjac.skole.hr'))),
            Image.network(
                'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/29/Image/lokacija%20skole2.jpg')
          ],
        ));
  }
}
