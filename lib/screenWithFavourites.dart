import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ss_donji_miholjac/functionalites.dart';
import 'package:ss_donji_miholjac/topSearch.dart';
import './functionality_item.dart';
import 'models/functionality.dart';

class ScreenWithFavourites extends StatefulWidget {
  @override
  State<ScreenWithFavourites> createState() => _ScreenWithFavouritesState();
}

class _ScreenWithFavouritesState extends State<ScreenWithFavourites> {
  final List<Functionality> shownFunctionalities = [functionalities[8], functionalities[3], functionalities[1]];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopSearch(),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 30),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Istraži istaknute kategorije',
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
              children: shownFunctionalities
                  .map((funData) => FunctionalityItem(
                      funData.id, funData.title, funData.image, funData.route))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
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