import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectButton extends StatelessWidget {
  final String _buttonText;
  final String _route;

  const ProjectButton(this._buttonText, this._route, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: const Color.fromRGBO(0, 109, 119, 1)),
        onPressed: () {
          Navigator.pushNamed(context, _route);
        },
        child: Text(
          _buttonText,
          style: GoogleFonts.getFont('Poppins', fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}
