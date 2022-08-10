import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ss_donji_miholjac/models/category_grid.dart';
import 'package:ss_donji_miholjac/models/myTextButton.dart';
import 'package:ss_donji_miholjac/topSearch.dart';
import './functionality_item.dart';
import 'models/functionality.dart';

class SelectionScreen extends StatelessWidget {
  final String gridTitle;
  final List<Functionality> shownFunctionalities;
  
  const SelectionScreen({required this.gridTitle, required this.shownFunctionalities});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          TopSearch(),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top:30),
                  child: Align(
                      child: Text(gridTitle,
                          style: GoogleFonts.getFont('Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              fontStyle: FontStyle.normal))),
                ),
                Row(
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: TextButton(onPressed: () { Navigator.pushNamed(context, 'allCategories'); },
                      child: Text(
                          'Prikaži sve',
                          style: GoogleFonts.getFont('Poppins', fontStyle: FontStyle.normal, color: HexColor('#006D77')),
                  ),)
                  ),
                  Padding(padding: const EdgeInsets.only(top: 30),
                    child: IconButton(
                            onPressed:() {
                              Navigator.pushNamed(context, 'favourites');
                            }, 
                            icon: Icon(Icons.favorite, color: HexColor('#006D77'))
                          ),
                  )
                ],)
            
              ],
            ),
          ),
          CategoryGrid(shownFunctionalities)
        ],
      ),
    );
  }
}
