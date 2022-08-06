import 'package:flutter/material.dart';
import 'package:ss_donji_miholjac/selection_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigation_bar.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyNavigationBar()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/happy_students.png',
              fit: BoxFit.contain,
            ),
            Column(
              children: [
                Text(
                  'Srednja škola',
                  style: GoogleFonts.getFont('Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      fontStyle: FontStyle.normal),
                ),
                Text(
                  'DONJI MIHOLJAC',
                  style: GoogleFonts.getFont('Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      fontStyle: FontStyle.normal),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Developed by ',
                    style: GoogleFonts.getFont('Poppins',
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        fontStyle: FontStyle.normal)),
                Text(
                  'Marrow Labs d.o.o.',
                  style: GoogleFonts.getFont('Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      fontStyle: FontStyle.normal),
                ),
              ],
            ),
          ],
        ));
  }
}
