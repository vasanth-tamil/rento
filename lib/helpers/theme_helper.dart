import 'package:flutter/material.dart';

class ThemeHelper {
  static ThemeData getTheme(bool isDarkTheme) {
    return ThemeData(
      // Define the default brightness and colors.
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      primaryColor: Colors.cyan[800],
      // buttonTheme: ButtonThemeData(),
      colorScheme: ColorScheme.fromSwatch(
        errorColor: Colors.red.shade400,
        accentColor: Colors.greenAccent,
      ),

      // Define the default font family.
      // fontFamily: 'Georgia',
      fontFamily: 'Inter',

      // Define the default `TextTheme`. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
        bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Hind'),
      ),
    );
  }
}
