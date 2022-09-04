import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyTextButton extends StatelessWidget {
  final String _title;
  final String _linkToProgramDescription;

  MyTextButton(this._title, this._linkToProgramDescription);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            _title,
            style: GoogleFonts.getFont('Poppins', fontStyle: FontStyle.normal),
          ),
        ),
      ),
      onPressed: () async {
        if (await canLaunch(_linkToProgramDescription)) {
          launch(_linkToProgramDescription);
        } else {
          throw "Could not launch $_linkToProgramDescription";
        }
      },
    );
  }
}
