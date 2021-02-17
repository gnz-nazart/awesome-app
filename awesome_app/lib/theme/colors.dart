import 'package:flutter/material.dart';

extension ColorToString on Color {
  String toHexString() =>
      '#${value.toRadixString(16).substring(2)}'.toUpperCase();
}

class AppColors {
  static const MaterialColor grey = MaterialColor(
    0xff4a5568,
    <int, Color>{
      100: Color(0xfff7fafc),
      200: Color(0xffedf2f7),
      300: Color(0xffe2e8f0),
      400: Color(0xffcbd5e0),
      500: Color(0xffa0aec0),
      600: Color(0xff718096),
      700: Color(0xff4a5568),
      800: Color(0xff2d3748),
      900: Color(0xff1a202c),
    },
  );

  /// Color primario.
  ///
  /// Valores disponibles:
  /// [100, 700, 900]
  ///
  /// ```dart
  /// AppColors.primaryColor[700]
  /// ```
  static const MaterialColor primaryColor = MaterialColor(
    0xff26a69a,
    <int, Color>{
      100: Color(0xff64d8cb),
      700: Color(0xff26a69a),
      900: Color(0xff00766c),
    },
  );

  /// Color secundario.
  ///
  /// Valores disponibles:
  /// [100, 700, 900]
  ///
  /// ```dart
  /// AppColors.accentColor[700]
  /// ```
  static const MaterialColor accentColor = MaterialColor(
    0xffff7a58,
    <int, Color>{
      100: Color(0xffffbd45),
      700: Color(0xfffb8c00),
      900: Color(0xffc25e00),
    },
  );

  /// Color de alerta.
  ///
  /// Valores disponibles:
  /// [100, 700, 900]
  ///
  /// ```dart
  /// AppColors.dangerColor[700]
  /// ```
  static const MaterialColor dangerColor = MaterialColor(
    0xffff595e,
    <int, Color>{
      100: Color(0xffffe0e1),
      700: Color(0xffff595e),
      900: Color(0xfff03e43),
    },
  );
}
