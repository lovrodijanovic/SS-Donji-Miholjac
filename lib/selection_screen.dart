// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 30),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(gridTitle,
                    style: GoogleFonts.getFont('Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
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
        ],
      ),
    );
  }
}
