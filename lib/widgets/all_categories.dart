import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ss_donji_miholjac/models/category_grid.dart';
import '../models/functionality_screen.dart';
import '../models/functionalites.dart';

class AllCategories extends StatelessWidget {
  AllCategories({Key? key}) : super(key: key);

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
              CategoryGrid(functionalities),
            ],
          ),
        ));
  }
}
