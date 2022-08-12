import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/functionality_screen.dart';

import '../models/parse_rss_to_list.dart';

class InternationalCooperation extends StatelessWidget {
  const InternationalCooperation({Key? key}) : super(key: key);
  static Uri rssUrl = Uri.parse(
      'http://ss-donji-miholjac.skole.hr/rss/rssfeeder.php?rss_kid=6186&rss_ct=news&rss_uid=1');
  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(pageTitle: 'Međunarodna suradnja', child: ParseRssToList(rssUrl,'Detalji'));
  }
}