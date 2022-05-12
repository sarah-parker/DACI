import 'package:daci/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final daciTheme = ThemeData(
    // primarySwatch: dacidarkmaterial,
    appBarTheme: AppBarTheme(
      backgroundColor: daciDark,
      foregroundColor: daciDark,
      toolbarTextStyle: TextStyle(color: daciBackground),
      titleTextStyle: TextStyle(color: daciBackground),
    ),
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
    ),
    backgroundColor: daciBackground,
    hoverColor: daciLight);

// class DaciTheme {
//   static final ThemeData lightTheme = ThemeData.light().copyWith(
//       visualDensity: VisualDensity.adaptivePlatformDensity,
//       // backgroundColor: daciblueAccent,
//       secondaryHeaderColor: Colors.black,
//       // scaffoldBackgroundColor: Colors.transparent,
//       appBarTheme: const AppBarTheme(
//         color: Colors.white,
//       ),
//       typography: Typography.material2018().copyWith(
//           tall: const TextTheme(
//               caption: TextStyle(fontSize: 10, fontWeight: FontWeight.w300))),
//       primaryColor: daciblue,
//       checkboxTheme: CheckboxThemeData(
//         checkColor: MaterialStateProperty.all(Colors.white),
//         fillColor: MaterialStateProperty.all(daciblue),
//       ),
//       colorScheme: ColorScheme(
//           primary: daciblue,
//           secondary: daciblue,
//           error: Colors.red,
//           onError: Colors.red,
//           background: daciblue,
//           onBackground: daciblue.shade100,
//           onPrimary: daciblue.shade200,
//           onSecondary: daciblue.shade300,
//           surface: daciblueAccent,
//           onSurface: daciblue.shade400,
//           brightness: Brightness.light),
//       textButtonTheme: TextButtonThemeData(
//           style: TextButton.styleFrom(primary: daciblue.shade900)),
//       elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//         textStyle: const TextStyle(fontSize: 15.0),
//         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 35),
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(5)),
//         ),
//         onPrimary: Colors.white,
//         primary: daciblue,
//         onSurface: daciblue,
//       )),
//       buttonTheme: const ButtonThemeData(
//         buttonColor: Colors.black,
//         hoverColor: daciblue,
//       ),
//       outlinedButtonTheme: OutlinedButtonThemeData(
//         style: OutlinedButton.styleFrom(
//           side: BorderSide(width: 0.5, color: ddNeutral100),
//           backgroundColor: ddSecondary,
//           primary: ddNeutral400,
//           textStyle: const TextStyle(fontSize: 10),
//           visualDensity: const VisualDensity(horizontal: 0.0, vertical: -3),
//         ),
//       ),
//       textTheme: TextTheme(
//           caption: TextStyle(color: ddNeutral400),
//           bodyText1: GoogleFonts.openSans(color: Colors.black),
//           headline1: GoogleFonts.montserrat(
//             // fontSize: 25,
//             color: Colors.black,
//             fontWeight: FontWeight.w400,
//             letterSpacing: 3,
//           )).apply(
//         bodyColor: daciTextColorDark,
//         displayColor: daciTextColorDark,
//       ),
//       bottomAppBarColor: daciblue,
//       inputDecorationTheme: InputDecorationTheme(
//           floatingLabelBehavior: FloatingLabelBehavior.auto,
//           helperMaxLines: 2,
//           filled: true,
//           fillColor: ddNeutral100,
//           border: CustomInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius: BorderRadius.circular(5.0)),
//           focusedBorder: const CustomInputBorder(
//               borderSide: BorderSide(color: daciblue, width: 2),
//               borderRadius: BorderRadius.all(Radius.circular(5))),
//           focusedErrorBorder: const CustomInputBorder(
//               borderSide: BorderSide(color: daciblue, width: 2),
//               borderRadius: BorderRadius.all(Radius.circular(5))),
//           focusColor: daciTextColorLight,
//           labelStyle: const TextStyle(color: daciblue),
//           floatingLabelStyle: const TextStyle(color: daciblue)));
// }
