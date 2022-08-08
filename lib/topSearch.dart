import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class TopSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                            hintText: 'Pretraži temu',
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
          );
  }
}