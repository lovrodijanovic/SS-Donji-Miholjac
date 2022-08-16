import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyTextButton extends StatelessWidget {
  final String title;
  final String linkToProgramDescription;

  MyTextButton(this.title, this.linkToProgramDescription);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            title,
            style: GoogleFonts.getFont('Poppins', fontStyle: FontStyle.normal),
          ),
        ),
      ),
      onPressed: () async {
        if (await canLaunch(linkToProgramDescription)) {
          launch(linkToProgramDescription);
        } else {
          throw "Could not launch $linkToProgramDescription";
        }
      },
    );
  }
}
