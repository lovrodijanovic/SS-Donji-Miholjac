import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FunctionalityItem extends StatelessWidget {
  final String id;
  final String title;
  final Image image;
  final String route;

  const FunctionalityItem(this.id, this.title, this.image, this.route,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15), 
          boxShadow: [BoxShadow(spreadRadius: 0.1, blurRadius: 1, color: Colors.grey.withOpacity(0.6), offset: const Offset(0, 5)),]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              image,
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: GoogleFonts.getFont('Poppins',
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
