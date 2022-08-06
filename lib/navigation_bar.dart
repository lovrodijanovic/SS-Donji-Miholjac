import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:ss_donji_miholjac/selection_screen.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    SelectionScreen(),
    SelectionScreen(),
    SelectionScreen(),
    SelectionScreen(),
  ];

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
