import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final light_theme = ThemeData(
  colorScheme: ColorScheme.light(
    background: Color.fromRGBO(242, 243, 247, 1),
    primaryContainer: Color.fromRGBO(226, 226, 234, 1),
    secondaryContainer: Color.fromRGBO(198, 203, 217, 1),
    outline: Color.fromRGBO(154, 154, 175, 1),
    tertiary: Color.fromRGBO(7, 7, 12, 1),
    primary: Color.fromRGBO(0, 98, 255, 1),
    onPrimary: Color.fromRGBO(0, 98, 255, 0.5),
  ),

  textTheme: TextTheme(
    titleLarge: GoogleFonts.inter(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(7, 7, 12, 1),
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(7, 7, 12, 1),
    ),
    titleSmall: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(7, 7, 12, 1),
    ),
    labelLarge: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(7, 7, 12, 1),
    ),
    labelMedium: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(7, 7, 12, 1),
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(7, 7, 12, 1),
    ),
    bodyLarge: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Color.fromRGBO(7, 7, 12, 1),
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Color.fromRGBO(7, 7, 12, 1),
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Color.fromRGBO(7, 7, 12, 1),
    ),
    displayMedium: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(226, 226, 234, 1),
    ),
    displayLarge: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(154, 154, 175, 1),
    ),
    displaySmall: GoogleFonts.inter(
      color: Color.fromRGBO(0, 98, 255, 1),
      fontWeight: FontWeight.w500,
      fontSize: 14
    ),
  )
);