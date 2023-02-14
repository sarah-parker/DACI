import 'package:daci/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final daciTheme = ThemeData(
    primaryColor: daciLight,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      backgroundColor: daciDark,
      foregroundColor: daciDark,
      toolbarTextStyle: TextStyle(color: daciBackground),
      titleTextStyle: TextStyle(color: daciBackground),
    ),
    scaffoldBackgroundColor: daciBackground,
    popupMenuTheme:
        PopupMenuThemeData(color: daciDark, textStyle: TextStyle(color: daciBackground)),
    drawerTheme: DrawerThemeData(backgroundColor: daciDark, elevation: 0),
    iconTheme: IconThemeData(color: daciBackground),
    splashColor: daciDark,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.openSans(color: Colors.black, decoration: TextDecoration.underline),
      bodyMedium: GoogleFonts.openSans(color: Colors.black),
      displayLarge: GoogleFonts.montserrat(
        fontSize: 25,
        color: daciBackground,
        fontWeight: FontWeight.w400,
        letterSpacing: 3,
      ),
      displayMedium: GoogleFonts.montserrat(
        fontSize: 20,
        color: daciDark,
        fontWeight: FontWeight.w400,
        letterSpacing: 2,
      ),
      displaySmall: GoogleFonts.montserrat(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w400,
        letterSpacing: 2,
      ),
      headlineMedium: GoogleFonts.montserrat(
        fontSize: 14,
        color: daciBackground,
        fontWeight: FontWeight.w400,
        letterSpacing: 3,
      ),
      headlineSmall: GoogleFonts.montserrat(
        fontSize: 14,
        color: daciDark,
        fontWeight: FontWeight.w400,
        letterSpacing: 2,
      ),
      titleLarge: GoogleFonts.montserrat(
        fontSize: 14,
        color: daciBackground,
        fontWeight: FontWeight.w400,
        letterSpacing: 1,
      ),
    ),
    backgroundColor: daciBackground,
    hoverColor: daciDark);
