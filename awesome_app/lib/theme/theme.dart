import 'package:awesome_app/theme/colors.dart';
import 'package:awesome_app/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  accentColor: AppColors.accentColor,
  appBarTheme: const AppBarTheme(
    brightness: Brightness.light,
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    iconTheme: IconThemeData.fallback(),
    titleTextStyle: AppTextStyle.title1,
  ),
  backgroundColor: const Color(0xffffffff),
  brightness: Brightness.light,
  buttonTheme: ButtonThemeData(
    height: 48,
    minWidth: double.infinity,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
  dialogBackgroundColor: const Color(0xffffffff),
  focusColor: const Color(0x1f000000),
  fontFamily: 'Sans',
  highlightColor: const Color(0xff000000),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.grey[500]),
      borderRadius: BorderRadius.circular(8),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    counterStyle: TextStyle(color: AppColors.grey[600]),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.grey[200]),
      borderRadius: BorderRadius.circular(8),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.grey[500]),
      borderRadius: BorderRadius.circular(8),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.dangerColor),
      borderRadius: BorderRadius.circular(8),
    ),
    errorStyle: const TextStyle(color: AppColors.dangerColor),
    fillColor: Colors.white,
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.grey[700]),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.dangerColor,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    focusColor: AppColors.grey[700],
    helperStyle: TextStyle(color: AppColors.grey[600]),
    hintStyle: TextStyle(color: AppColors.grey[700]),
    labelStyle: TextStyle(color: AppColors.grey[700]),
  ),
  primarySwatch: AppColors.primaryColor,
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: const Color(0xffffffff),
  textTheme: GoogleFonts.latoTextTheme(),
);
