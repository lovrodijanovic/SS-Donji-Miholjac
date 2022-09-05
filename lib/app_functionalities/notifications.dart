import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/parse_rss_to_list.dart';
import '../models/functionality_screen.dart';

class Notifications extends StatelessWidget {
  static final Uri _rssUrl = Uri.parse(
      'http://ss-donji-miholjac.skole.hr/rss/rssfeeder.php?rss_kid=5259&rss_ct=news&rss_uid=1');

  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Obavijesti',
        child: ParseRssToList(_rssUrl, 'Pogledaj obavijest'));
  }
}
