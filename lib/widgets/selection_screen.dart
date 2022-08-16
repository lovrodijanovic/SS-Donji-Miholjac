import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ss_donji_miholjac/models/category_grid.dart';
import 'package:ss_donji_miholjac/widgets/top_search.dart';
import '../models/functionality.dart';

class SelectionScreen extends StatelessWidget {
  final String gridTitle;
  final List<Functionality> shownFunctionalities;

  const SelectionScreen(
      {required this.gridTitle, required this.shownFunctionalities});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          TopSearch(),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(gridTitle,
                        style: GoogleFonts.getFont('Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontStyle: FontStyle.normal))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'allCategories');
                  },
                  child: Text(
                    'Prikaži sve',
                    style: GoogleFonts.getFont('Poppins',
                        fontStyle: FontStyle.normal,
                        color: HexColor('#006D77'),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 30),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'favourites');
                    },
                    icon: Icon(Icons.favorite, color: HexColor('#006D77'))),
              )
            ],
          ),
          CategoryGrid(shownFunctionalities)
        ],
      ),
    );
  }
}
