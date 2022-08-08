import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../functionality_screen.dart';

class InformationAndContact extends StatelessWidget {

  final Uri webAdress = Uri.parse('http://ss-donji-miholjac.skole.hr/');
  final Uri location = Uri.parse('https://www.google.com/maps/place/Srednja+%C5%A1kola+donji+Miholjac/@45.7617766,18.170678,17z/data=!3m1!4b1!4m5!3m4!1s0x475d4736e40af4cd:0x7aee66bfa39e3bc4!8m2!3d45.7617729!4d18.1751627');

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Informacije, kontakt, knjižnica',
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
'''
Adresa: 
Vukovarska 84, 31540 Donji Miholjac 

Brojevi telefona: 
Ravnatelj: 031 / 631 - 983
Tajništvo: 031 / 631 - 049
Računovodstvo: 031 / 630 - 970
Administracija: 031 / 633 - 156,

Opći podaci: 
IBAN: HR5323600001502689078
OIB: 04017904699
WEB: www.ss-donji-miholjac.skole.hr
E-MAIL: ured@ss-donji-miholjac.skole.hr''',
                        style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal)),
                            ))),
                  TextButton(
                    child: Text(
                      "Link na web stranicu škole",
                      style: GoogleFonts.getFont('Poppins',
                          fontStyle: FontStyle.normal),
                    ),
                    onPressed: () async {
                      if (await canLaunchUrl(webAdress)) {
                        launchUrl(webAdress);
                      } else {
                        throw "Could not launch $webAdress";
                      }
                    },
                  ),
                  TextButton(
                    child: Text(
                      "Naša lokacija na Google Maps",
                      style: GoogleFonts.getFont('Poppins',
                          fontStyle: FontStyle.normal),
                    ),
                    onPressed: () async {
                      if (await canLaunchUrl(location)) {
                        launchUrl(location);
                      } else {
                        throw "Could not launch $location";
                      }
                    },
                  ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Image.network(
                      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/29/Image/lokacija%20skole2.jpg'),
                ),
              ],
            ),
          ],
        ));
  }
}
