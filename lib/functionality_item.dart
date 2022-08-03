import 'package:flutter/material.dart';

class FunctionalityItem extends StatelessWidget {
  final String id;
  final String title;
  final Icon icon;
  final String route;

  const FunctionalityItem(this.id, this.title, this.icon, this.route, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      splashColor: Theme.of(context).primaryColor,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color.fromARGB(255, 231, 231, 231))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              icon,
              Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}
