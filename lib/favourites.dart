import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ss_donji_miholjac/functionalites.dart';
import '../functionality_screen.dart';
import 'functionality_item.dart';

class Favourites extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FunctionalityScreen(
        pageTitle: 'Favorizirane kategorije', 
        child: Column(
          children: [
            Padding(
            padding: const EdgeInsets.only(left: 15, top: 30),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Favorizirane kategorije',
                    style: GoogleFonts.getFont('Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontStyle: FontStyle.normal))),
            ),
            Expanded(
              child: GridView(
                    padding: const EdgeInsets.all(30),
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      maxCrossAxisExtent: 200,
                    ),
                    children: favouriteFunctionalities
                        .map((funData) => FunctionalityItem(
                            funData.id, funData.title, funData.image, funData.route))
                        .toList(),
                  ),
             ),
          ],
        ),
    );
  }
}