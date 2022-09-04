import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBlock extends StatelessWidget {
  final String _text;
  const TextBlock(this._text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Card(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(_text,
              style:
                  GoogleFonts.getFont('Poppins', fontStyle: FontStyle.normal)),
        )));
  }
}
