import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/models/parse_rss_to_list.dart';
import '../models/functionality_screen.dart';

class Events extends StatelessWidget {
  static Uri rssUrl = Uri.parse(
      'http://ss-donji-miholjac.skole.hr/rss/rssfeeder.php?rss_kid=1&rss_ct=news&rss_uid=1');
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Događanja',
        child: ParseRssToList(rssUrl, 'Pogledaj događaj'));
  }
}
