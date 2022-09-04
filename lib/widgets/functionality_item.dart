import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ss_donji_miholjac/models/functionalites.dart';

class FunctionalityItem extends StatefulWidget {
  final String _id;
  final String _title;
  final SvgPicture _image;
  final String _route;

  const FunctionalityItem(this._id, this._title, this._image, this._route,
      {Key? key})
      : super(key: key);

  @override
  State<FunctionalityItem> createState() => _FunctionalityItemState();
}

class _FunctionalityItemState extends State<FunctionalityItem> {
  bool isInFavourites() {
    return favouriteFunctionalities.contains(functionalities[
        functionalities.indexWhere((element) => element.id == widget._id)]);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        Navigator.pushNamed(context, widget._route);
      },
      splashColor: Theme.of(context).primaryColor,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: double.infinity,
        ),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 0.1,
                      blurRadius: 1,
                      color: Colors.grey.withOpacity(0.6),
                      offset: const Offset(0, 5)),
                ]),
            child: FittedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  widget._image,
                  FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                widget._title,
                                style: GoogleFonts.getFont('Poppins',
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: isInFavourites()
                                ? () {
                                    setState(() {
                                      favouriteFunctionalities.remove(
                                          functionalities[functionalities
                                              .indexWhere((element) =>
                                                  element.id == widget._id)]);
                                    });
                                  }
                                : () {
                                    setState(() {
                                      favouriteFunctionalities.add(
                                          functionalities[functionalities
                                              .indexWhere((element) =>
                                                  element.id == widget._id)]);
                                    });
                                  },
                            icon: isInFavourites()
                                ? Icon(Icons.favorite,
                                    color: HexColor('#006D77'))
                                : Icon(Icons.favorite_border,
                                    color: HexColor('#006D77')))
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
