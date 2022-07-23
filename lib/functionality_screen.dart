import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FunctionalityScreen extends StatelessWidget {
  final String functionalityId;
  final String functionalityTitle;

  FunctionalityScreen(this.functionalityId, this.functionalityTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(functionalityTitle)),
      body: Center(child: Text('TBA')),
    );
  }
}
