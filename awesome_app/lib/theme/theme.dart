import 'package:awesome_app/theme/colors.dart';
import 'package:awesome_app/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      brightness: Brightness.light,
      centerTitle: false,
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData.fallback(),
      titleTextStyle: AppTextStyle.title1,
    ),
    backgroundColor: const Color(0xffffffff),
    dialogBackgroundColor: const Color(0xffffffff),
    primarySwatch: AppColors.primaryColor,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: const Color(0xffffffff),
    textTheme: GoogleFonts.latoTextTheme());
