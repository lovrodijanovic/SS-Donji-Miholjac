import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:ss_donji_miholjac/models/functionalites.dart';
import 'package:ss_donji_miholjac/widgets/selection_screen.dart';
import '../models/functionality.dart';

class MyNavigationBar extends StatefulWidget {
  final List<Functionality> _highlightedFunctionalities = [
    functionalities.elementAt(8), //oglasna ploca
    functionalities.elementAt(3), //dogadanja
    functionalities.elementAt(2), //raspored
  ];
  final List<Functionality> _studentFunctionalities = [
    functionalities.elementAt(8), //oglasna ploca
    functionalities.elementAt(2), //raspored
    functionalities.elementAt(3), //dogadanja
    functionalities.elementAt(6), //upis u prvi razred
    functionalities.elementAt(4), //projekti
    functionalities.elementAt(5), //ucenicka zadruga
    functionalities.elementAt(7), //zavrsni razredi
  ];
  final List<Functionality> _parentFunctionalities = [
    functionalities.elementAt(8), //oglasna ploca
    functionalities.elementAt(2), //raspored
    functionalities.elementAt(3), //dogadanja
    functionalities.elementAt(6), //upis u prvi razred
    functionalities.elementAt(7), //zavrsni razredi
  ];
  final List<Functionality> _schoolFunctionalities = [
    functionalities.elementAt(0), //opce informacije
    functionalities.elementAt(1), //programi i zanimanja
    functionalities.elementAt(4), //projekti
    functionalities.elementAt(9), //knjiznica
    functionalities.elementAt(10), //kontakt
  ];

  MyNavigationBar({Key? key}) : super(key: key);
  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  static final List<Widget> _widgetOptions = <Widget>[
    SelectionScreen(
        gridTitle: 'Istraži istaknute kategorije',
        shownFunctionalities: MyNavigationBar()._highlightedFunctionalities),
    SelectionScreen(
        gridTitle: 'Istraži kategorije',
        shownFunctionalities: MyNavigationBar()._studentFunctionalities),
    SelectionScreen(
        gridTitle: 'Istraži kategorije',
        shownFunctionalities: MyNavigationBar()._parentFunctionalities),
    SelectionScreen(
        gridTitle: 'Istraži kategorije',
        shownFunctionalities: MyNavigationBar()._schoolFunctionalities),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Istaknuto',
          ),
          BottomNavigationBarItem(
            icon: Icon(PhosphorIcons.eyeglasses),
            label: 'Učenici',
          ),
          BottomNavigationBarItem(
            icon: Icon(PhosphorIcons.users),
            label: 'Roditelji',
          ),
          BottomNavigationBarItem(
            icon: Icon(PhosphorIcons.house_line),
            label: 'O školi',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: HexColor('#006D77'),
        onTap: _onItemTapped,
      ),
    );
  }
}
