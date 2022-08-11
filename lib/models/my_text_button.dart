import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyTextButton extends StatelessWidget {

  final String title;
  final String linkToProgramDescription; 

  const MyTextButton(this.title, this.linkToProgramDescription);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: 
        Text(
          title,
          style: GoogleFonts.getFont('Poppins', fontStyle: FontStyle.normal),
        ),
      onPressed: () async {
        if (await canLaunchUrl(Uri.parse(linkToProgramDescription))) {
          launchUrl(Uri.parse(linkToProgramDescription));
        } 
        else {
          throw "Could not launch $linkToProgramDescription";
        }
      },
    );
  }
}