import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ss_donji_miholjac/models/app_theme.dart';
import 'package:ss_donji_miholjac/models/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Srednja škola Donji Miholjac',
        theme: appTheme,
        initialRoute: '/',
        routes: routes);
  }
}
