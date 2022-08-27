import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FunctionalityScreen extends StatelessWidget {
  final String pageTitle;
  final Widget child;

  const FunctionalityScreen({Key? key, required this.pageTitle, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
        backgroundColor: HexColor('#006D77'),
      ),
      body: child,
    );
  }
}
