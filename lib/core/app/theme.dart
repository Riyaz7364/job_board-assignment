import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _baseTextTheme = GoogleFonts.robotoTextTheme();

final ThemeData lightTheme = ThemeData.light().copyWith(
  textTheme: _baseTextTheme,
);

final ThemeData darkTheme = ThemeData.dark().copyWith(
  textTheme: _baseTextTheme.copyWith(
    bodyMedium: _baseTextTheme.bodyMedium?.copyWith(color: Colors.amber),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStatePropertyAll(Colors.white),
    )
  )
);
