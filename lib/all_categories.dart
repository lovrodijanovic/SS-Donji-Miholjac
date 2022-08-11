import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ss_donji_miholjac/models/functionality_screen.dart';
import 'package:ss_donji_miholjac/models/category_grid.dart';
import 'functionalites.dart';
import 'models/functionality.dart';

class AllCategories extends StatelessWidget {
  final List<Functionality> allCategories = [
    functionalities.elementAt(0),
    functionalities.elementAt(1),
    functionalities.elementAt(2),
    functionalities.elementAt(3),
    functionalities.elementAt(4),
    functionalities.elementAt(5),
    functionalities.elementAt(6),
    functionalities.elementAt(7),
    functionalities.elementAt(8),
    functionalities.elementAt(9),
    functionalities.elementAt(10),
  ];

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Sve kategorije',
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Sve kategorije',
                            style: GoogleFonts.getFont('Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                fontStyle: FontStyle.normal))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'favourites');
                        },
                        icon: Icon(Icons.favorite, color: HexColor('#006D77'))),
                  )
                ],
              ),
              CategoryGrid(allCategories),
            ],
          ),
        ));
  }
}
