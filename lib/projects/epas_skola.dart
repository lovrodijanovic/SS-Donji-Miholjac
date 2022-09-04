import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ss_donji_miholjac/models/functionality_screen.dart';
import 'package:ss_donji_miholjac/models/my_text_button.dart';
import 'package:ss_donji_miholjac/models/text_block.dart';

class EpasSkola extends StatelessWidget {
  const EpasSkola({Key? key}) : super(key: key);

  final String _epas =
      'Početkom školske godine 2018./19. Srednja škola Donji Miholjac postala je kandidat za status škole ambasadora Europskog parlamenta (European Parliament Amabassador School). 1.kolovoza 2019. smo dobili obavijest da smo ispunili kriterije i od tada više nismo "kandidat" već Škola ambasador Europskog parlamenta. Provođenje programa možete pratiti preko linka na stranicu projekta ispod.';

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'EPAS škola',
        child: Column(
          children: [
            TextBlock(_epas),
            MyTextButton('Link na web stranicu projekta',
                'https://epasssdm.wixsite.com/epasssdm')
          ],
        ));
  }
}
