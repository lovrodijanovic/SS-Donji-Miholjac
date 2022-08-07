// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
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
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
            child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(45))),
                color: HexColor('#006D77'),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          padding: const EdgeInsets.only(right: 20, top: 20),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, 'informationAndContact');
                          },
                          icon: const Icon(
                            PhosphorIcons.info,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Column(
                            children: [
                              Text(
                                'Dobrodošli,',
                                style: GoogleFonts.getFont('Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal),
                              ),
                              Text(
                                'Srednja škola Donji Miholjac',
                                style: GoogleFonts.getFont('Poppins',
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Pretraži temu",
                            hintStyle: GoogleFonts.getFont('Poppins',
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic),
                            prefixIcon: Icon(Icons.search, color: HexColor('#006D77'),),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30.0))
                            )
                            )
                          ),
                      ),
                    ],
                  ),
                )),
          ),
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
