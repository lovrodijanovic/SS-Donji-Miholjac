import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ss_donji_miholjac/functionalites.dart';
import 'models/functionality.dart';

class FunctionalityItem extends StatefulWidget {
  final String id;
  final String title;
  final SvgPicture image;
  final String route;

  const FunctionalityItem(this.id, this.title, this.image, this.route,
      {Key? key})
      : super(key: key);

  @override
  State<FunctionalityItem> createState() => _FunctionalityItemState();
}

class _FunctionalityItemState extends State<FunctionalityItem> {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        Navigator.pushNamed(context, widget.route);
      },
      splashColor: Theme.of(context).primaryColor,
      child: FittedBox(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15), 
            boxShadow: [BoxShadow(spreadRadius: 0.1, blurRadius: 1, color: Colors.grey.withOpacity(0.6), offset: const Offset(0, 5)),]),
            child: Column(
              children: [
                widget.image,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.title,
                          style: GoogleFonts.getFont('Poppins',
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    IconButton(onPressed: () {setState((){
                      //favouriteFunctionalities.add(functionalities[functionalities.indexWhere((element) => element.id == widget.id)]);
                    });}, icon: const Icon(Icons.favorite),)
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
