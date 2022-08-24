import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/functionality_screen.dart';
import 'package:ss_donji_miholjac/models/my_text_button.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';

class ETwinning extends StatelessWidget {
  const ETwinning({Key? key}) : super(key: key);

  final String eTwinningText =
      '''Najveća online zajednica škola u Europi, s više od 552600 registriranih djelatnika iz 189 784 vrtića i škola. eTwinning je jedna od aktivnosti programa Erasmus+. http://www.etwinning.net je portal namjenjen međunarodnoj suradnji i usavršavanju kako nastavnog tako i nenastavnog osoblja od vrtića, preko osnovnih pa sve do srednjih škola.   Ovaj portal služi nastavnicima i njihovim učenicima za upoznavanje i suradnju s kolegama iz europskih škola, a kroz eTwinning + i šire, kroz različite oblike usavršavanja te radu na međunarodnim, ali i nacionalnim virtualnim projektima.    


Zašto eTwinning? – Prednosti

Fleksibilnost - sami određujete tempo koji vam odgovara. Nakon što se registrirate niste obavezni odmah započeti projekt. Pogledajte što drugi rade, razmislite kakva bi suradnja odgovarala kurikulumu, pitajte učenike koje su njihove želje u vezi međunarodne suradnje.
Kada ste spremni, osmislite projekt, pronađite partnera i započnite s aktivnostima u razredu. Možete sami bit autor projekta, ali se možete i kao partner priključiti projektu. Možete koristiti i projektne komplete kako biste si olakšali ili jednostavno preuzeli primjer dobre prakse.

Jednostavnost - za prijavu na portal nema papirologije. Prijava traje par minuta, isto kao i registracija projekta. Portal vam nudi različite alate koji vam olakšavaju i omogućavaju provedbu projekta. Kada započnete projekt, otvara vam se mogućnost korištenja „Twin space-a" - platforme koja nudi prostor za razmjenu dokumenata, fotografija, uradaka vaših učenika, brbljaonice za vas i vaše učenike, mogućnost vođenja bloga projekta itd.

Sigurnost - eTwinning je sigurno i provjereno on-line okružje za vas i vaše učenike. Agencija za mobilnost i programe Europske Unije (vaša nacionalna služba za podršku) provjerava jesu li korisnici zaista nastavnici, pedagoški djelatnici ili nenastavno osoblje u ustanovama u kojima su naveli da su zaposleni.

Jedan od ciljeva eTwinning projekta je poboljšati sposobnosti učitelja u radu s ICT-om i učiniti ICT dijelom svakodnevnog života u razredu, pa je stoga eTwinning prilagođen svim razinama ICT znanja i sposobnosti. Dakle, ne morate biti napredni u korištenju ICT-a da bi sudjelovali u eTwinning aktivnostima.


eTwinning ambasadori

To su iskusni eTwinneri koji pružaju pomoć i podršku novim i svim ostalim eTwinnerima u realizaciji projekata, ali i u snalaženju na portale eTwinning. Više o hrvatskim eTwinning ambasadorima i njihovim kontaktima na priloženom linku. Također na priloženim linkovima se možete registrirati u eTwinning zajednicu i posjetiti hrvatsku stranicu.''';

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'eTwinning',
        child: ListView(
          children: [
            TextBlock(eTwinningText),
            MyTextButton('eTwinning ambasadori',
                'https://www.etwinning.hr/hr/sadrzaj/o-nama/etwinningovi-ambasadori'),
            MyTextButton('eTwinning registracija',
                'https://www.etwinning.net/hr/pub/index.htm'),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: MyTextButton('eTwinning Hrvatska', 'https://www.etwinning.hr'),
            ),
          ],
        ));
  }
}
