import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/functionality_screen.dart';

class Library extends StatelessWidget {
  final Uri library = Uri.parse(
      'https://sites.google.com/view/virtualnasdm/po%C4%8Detna-stranica');

  Library({Key? key}) : super(key: key);

  Future<void> _launchUrl() async {
    if (!await launchUrl(library)) {
      throw 'Could not launch $library';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
      pageTitle: 'Knjižnica',
      child: ListView(children: [
        Column(
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    '''
Radno vrijeme

PONEDJELJAK, SRIJEDA: 13,00 - 19,00
UTORAK, ČETVRTAK, PETAK: 7,00 - 13,00

Za sve ostale informacije posjetite web stranicu knjižnice klikom na gumb ispod.''',
                    style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                ))),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(0, 109, 119, 1)),
              onPressed: _launchUrl,
              child: Text(
                'Web stranica knjižnice',
                style:
                    GoogleFonts.getFont('Poppins', fontStyle: FontStyle.normal),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
