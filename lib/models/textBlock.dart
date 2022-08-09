import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBlock extends StatelessWidget {
  final String text;
  TextBlock(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
            child: Text(text, style: GoogleFonts.getFont('Poppins', fontStyle: FontStyle.normal)),
        )
      )
    );
  }
}