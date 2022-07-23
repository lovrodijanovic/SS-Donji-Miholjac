// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/functionality_screen.dart';

class FunctionalityItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color = Color.fromARGB(235, 90, 240, 95);

  FunctionalityItem(this.id, this.title);
  void selectFunctionality(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return FunctionalityScreen(id, title);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectFunctionality(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [color.withOpacity(0.6), color],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
