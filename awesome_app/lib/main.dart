import 'package:awesome_app/pages/home/home_screen.dart';
import 'package:awesome_app/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AwesomeApp());
}

class AwesomeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome app',
      theme: lightTheme,
      routes: {
        '/': (context) => HomeScreen(),
      },
    );
  }
}
