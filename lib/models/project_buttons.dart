import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectButton extends StatelessWidget {
  final String buttonText;
  final String route;

  ProjectButton(this.buttonText, this.route);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: const Color.fromRGBO(0, 109, 119, 1)),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(
          buttonText,
          style: GoogleFonts.getFont('Poppins', fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}
