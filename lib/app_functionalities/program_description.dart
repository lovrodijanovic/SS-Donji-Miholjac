import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ss_donji_miholjac/models/my_text_button.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';
import '../models/functionality_screen.dart';

class ProgramDescription extends StatelessWidget {
  final String _allPrograms =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/Programi%20i%20zanimanja%20S%C5%A0DM.pdf';
  final String _opcaGimnazija =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/Op%C4%87a%20gimnazija.pdf';
  final String _komercijalist =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/Komercijalist.pdf';
  final String _turistickoHotelijerskiKomercijalist =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/Turisti%C4%8Dko-hotelijerski%20komercijalist.pdf';
  final String _agrotehnika =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/Agrotehni%C4%8Dar.pdf';
  final String _strojarskiRacunalniTehnicar =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/Strojarsko%20ra%C4%8Dunalni%20tehni%C4%8Dar.pdf';
  final String _prodavac =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/Prodava%C4%8D.pdf';
  final String _cvjecar =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/Cvje%C4%87ar.pdf';
  final String _poljoprivredniGospodarstvenik =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/Poljoprivredni%20gospodarstvenik.pdf';
  final String _cncOperater =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/CNC%20operater.pdf';
  final String _automehanicar =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/Automehani%C4%8Dar%20JMO.pdf';
  final String _strojobravar =
      'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/58/File/Strojobravar%20JMO.pdf';

  const ProgramDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
      pageTitle: 'Programi i zanimanja',
      child: ListView(children: [
        Column(children: [
          TextBlock(
              'Klikom na link ispod možete pregledati popis programa i zanimanja po obrazovnim sektorima Srednje škole Donji Miholjac.'),
          MyTextButton("Popis programa i zanimanja", _allPrograms),
          TextBlock(
              'U dokumentima koji su priloženi možete pregledati nastavne planove za pojedina zanimanja za koja se mogu obrazovati učenici u Srednjoj školi Donji Miholjac. Proučite planove, pronađite se u određenom zanimanju i vidimo se na upisima!! Za nastavnii program koji vas zanima kliknite na njegov link.'),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Četverogodišnja zanimanja',
                  style: GoogleFonts.getFont('Poppins',
                      fontStyle: FontStyle.normal)),
            ),
          ),
          MyTextButton("Opća gimnazija", _opcaGimnazija),
          MyTextButton("Komercijalist", _komercijalist),
          MyTextButton("Turističko hotelijerski komercijalist",
              _turistickoHotelijerskiKomercijalist),
          MyTextButton("Agrotehničar", _agrotehnika),
          MyTextButton(
              "Strojarski računalni tehničar", _strojarskiRacunalniTehnicar),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Trogodišnja zanimanja',
                  style: GoogleFonts.getFont('Poppins',
                      fontStyle: FontStyle.normal)),
            ),
          ),
          MyTextButton("Prodavač", _prodavac),
          MyTextButton("Cvjećar", _cvjecar),
          MyTextButton(
              "Poljoprivredni gospodarstvenik", _poljoprivredniGospodarstvenik),
          MyTextButton("CNC operater", _cncOperater),
          MyTextButton("Automehaničar", _automehanicar),
          MyTextButton("Strojobravar", _strojobravar),
        ]),
      ]),
    );
  }
}
