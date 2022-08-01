import 'package:flutter/material.dart';

class FunctionalityScreen extends StatelessWidget {
  final String pageTitle;
  final Widget child;

  FunctionalityScreen({required this.pageTitle, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTitle)),
      body: child,
    );
  }
}
