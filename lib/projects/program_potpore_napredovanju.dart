import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/functionality_screen.dart';

import '../models/parse_rss_to_list.dart';

class AdvancementSupportProgram extends StatelessWidget {
  const AdvancementSupportProgram({Key? key}) : super(key: key);
  static final Uri _rssUrl = Uri.parse(
      'http://ss-donji-miholjac.skole.hr/rss/rssfeeder.php?rss_kid=6195&rss_ct=news&rss_uid=1');
  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Program Potpore Napredovanju',
        child: ParseRssToList(_rssUrl, 'Detalji'));
  }
}
