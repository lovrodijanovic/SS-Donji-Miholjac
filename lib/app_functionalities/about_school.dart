import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';
import '../models/functionality_screen.dart';

class AboutSchool extends StatelessWidget {
  static const String _aboutSchool = """
Povijest srednjeg školstva na području Donjeg Miholjca ima bogatu vremensku tradiciju. Još davna 1890. godina smatra se početkom obrtničkog školstva u Donjem Miholjcu kada su pri pučkoj školi prvi šegrti počeli učiti naukovne osnove svojih obrta. 

Godine 1947. godine škola dobiva naziv Škola učenika u privredi Donji Miholjac (popularno ŠUP). Gimnazijsko školovanje u Donjem Miholjcu započinje školske godine 1944. /45. , a 1965. godine počela je sa radom Gimnazija 'Ivo Lola Ribar' koja je preteča današnjeg gimnazijskog školovanja. 

Godine 1960. počela je sa radom Strojarsko - poljoprivredna škola Donji Miholjac. Spajanjem Škole učenika u privredi, Gimnazije i Strojarsko - poljoprivredne škole 1969. godine započinje sa radom  jedinstvena ustanova pod nazivom Srednjoškolski centar 'Braća Ribar' Donji Miholjac. 

Današnja Srednja škola Donji Miholjac službeno je registrirana 12. studenog 1992. godine. Radovi na izgradnji nove zgrade škole i sportske dvorane započeli su 23. svibnja 2020. godine, a predviđeni datum tehničkog pregleda gotove zgrade je 1. lipanj 2022. godine. Na fotografijama možete vidjeti kako je zgrada izgledala kada je izgrađena, kako je izgledala prije rušenja te kako gradilište izgleda 1. siječnja 2022. godine.""";

  const AboutSchool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
      pageTitle: 'O školi',
      child: ListView(
        children: [
          const TextBlock(_aboutSchool),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Image.network(
                'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/24/Image/celestina.jpg'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Image.network(
                'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/multistatic/24/Image/naslovnica.JPG'),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Image.network(
                'http://ss-donji-miholjac.skole.hr/upload/ss-donji-miholjac/images/newsimg/1763/Image/viber_slika_2022-06-13_21-45-17-461.jpg'),
          )
        ],
      ),
    );
  }
}
