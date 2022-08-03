// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/dummy_functionalites.dart';
import './dummy_functionalites.dart';
import './functionality_item.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Srednja škola Donji Miholjac',
        style: TextStyle(fontFamily: 'Raleway', fontSize: 20),
      )),
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        child: GridView(
          padding: const EdgeInsets.all(32),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
          ),
          children: DUMMY_FUNCTIONALITIES
              .map((funData) => FunctionalityItem(
                  funData.id, funData.title.toUpperCase(), funData.icon, funData.route))
              .toList(),
        ),
      ),
    );
  }
}
