import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ss_donji_miholjac/functionality_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstGrade extends StatelessWidget {
  final Uri _url_2022_2023 = Uri.parse(
      'http://www.ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natjecaj_za_upis_u_sk._godinu_2022-2023.pdf');

  final Uri _url_2021_2022 = Uri.parse(
      'http://www.ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natje%C4%8Daj%20za%20upis%20u%20prvi%20razred%20%C5%A1kolske%20godine%202021-2022.pdf');

  final Uri _url_2020_2021 = Uri.parse(
      'http://www.ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natjecaj_za_upis_u_sk._godinu_2022-2023.pdf');

  final Uri _url_2019_2020 = Uri.parse(
      'http://www.ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natjecaj_za_upis_u_sk._godinu_2022-2023.pdf');

  final Uri _url_2018_2019 = Uri.parse(
      'http://www.ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natjecaj_za_upis_u_sk._godinu_2022-2023.pdf');

  final Uri _url_2017_2018 = Uri.parse(
      'http://www.ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natjecaj_za_upis_u_sk._godinu_2022-2023.pdf');

  final Uri _url_2016_2017 = Uri.parse(
      'http://www.ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/static3/1965/File/Natjecaj_za_upis_u_sk._godinu_2022-2023.pdf');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url_2022_2023)) {
      throw 'Could not launch $_url_2022_2023';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Prvi razredi',
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(20),
                    child: Card(
                        child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Poštovani. Na ovom mjestu možete pronaći u prilozima natječaje raspisane za upis u prvi razred kao i sve ostale važne informacije potrebne za donošenje odluke o izboru za upis u prvi razred i samu proceduru upisa. Kako se bude približavao trenutak samih upisa moći će te pronaći sve više korisnih informacija koje će Vam olakšati odluku koji program i zanimanje želite odabrati u našoj školi u kojoj će te upravo vi biti prvi razredi u našim novim prostorima suvremeno opremljene zgrade i sportske dvorane. Natječaj za upis u 1. razred u školskoj godini 2022. / 23. pogledajte klikom na gumb ispod.',
                        style: GoogleFonts.getFont('Poppins',
                            fontStyle: FontStyle.normal),
                      ),
                    ))),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(0, 109, 119, 1)),
                    onPressed: _launchUrl,
                    child: Text(
                      '''
    Natječaj za upis u prvi 
razred 2022./2023. godine''',
                      style: GoogleFonts.getFont('Poppins',
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: Text(
                    'Natječaji za upis prijašnjih godina:',
                    style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                ),
                TextButton(
                  child: Text(
                    "2021./22.",
                    style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () async {
                    if (await canLaunchUrl(_url_2021_2022)) {
                      launchUrl(_url_2021_2022);
                    } else {
                      throw "Could not launch $_url_2021_2022";
                    }
                  },
                ),
                TextButton(
                  child: Text(
                    "2020./21.",
                    style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () async {
                    if (await canLaunchUrl(_url_2020_2021)) {
                      launchUrl(_url_2021_2022);
                    } else {
                      throw "Could not launch $_url_2021_2022";
                    }
                  },
                ),
                TextButton(
                  child: Text(
                    "2019./20.",
                    style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () async {
                    if (await canLaunchUrl(_url_2019_2020)) {
                      launchUrl(_url_2021_2022);
                    } else {
                      throw "Could not launch $_url_2021_2022";
                    }
                  },
                ),
                TextButton(
                  child: Text(
                    "2018./19.",
                    style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () async {
                    if (await canLaunchUrl(_url_2018_2019)) {
                      launchUrl(_url_2021_2022);
                    } else {
                      throw "Could not launch $_url_2021_2022";
                    }
                  },
                ),
                TextButton(
                  child: Text(
                    "2017./18.",
                    style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () async {
                    if (await canLaunchUrl(_url_2017_2018)) {
                      launchUrl(_url_2021_2022);
                    } else {
                      throw "Could not launch $_url_2021_2022";
                    }
                  },
                ),
                TextButton(
                  child: Text(
                    "2016./17.",
                    style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () async {
                    if (await canLaunchUrl(_url_2016_2017)) {
                      launchUrl(_url_2021_2022);
                    } else {
                      throw "Could not launch $_url_2021_2022";
                    }
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
