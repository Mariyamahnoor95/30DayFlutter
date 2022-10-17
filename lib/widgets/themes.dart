import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 6, 82, 53),
          foregroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          // titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
      );
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
