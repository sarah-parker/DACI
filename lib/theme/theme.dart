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
    popupMenuTheme: PopupMenuThemeData(
        color: daciDark, textStyle: TextStyle(color: daciBackground)),
    drawerTheme: DrawerThemeData(backgroundColor: daciDark, elevation: 0),
    iconTheme: IconThemeData(color: daciBackground),
    splashColor: daciDark,
    textTheme: TextTheme(
        bodyText1: GoogleFonts.openSans(color: Colors.black),
        headline1: GoogleFonts.montserrat(
          fontSize: 25,
          color: daciBackground,
          fontWeight: FontWeight.w400,
          letterSpacing: 3,
        ),
        headline2: GoogleFonts.montserrat(
          fontSize: 20,
          color: daciDark,
          fontWeight: FontWeight.w400,
          letterSpacing: 2,
        ),
        headline3: GoogleFonts.montserrat(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
          letterSpacing: 2,
        ),
        headline4: GoogleFonts.montserrat(
          fontSize: 14,
          color: daciBackground,
          fontWeight: FontWeight.w400,
          letterSpacing: 3,
        )),
    backgroundColor: daciBackground,
    hoverColor: daciDark);
