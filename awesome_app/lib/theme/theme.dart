import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      brightness: Brightness.light,
      centerTitle: false,
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData.fallback(),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: const Color(0xffffffff),
    dialogBackgroundColor: const Color(0xffffffff),
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: const Color(0xffffffff),
    textTheme: GoogleFonts.latoTextTheme());
