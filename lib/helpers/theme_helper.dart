import 'package:flutter/material.dart';

class ThemeHelper {
  static ThemeData getTheme(bool isDarkTheme) {
    return ThemeData(
      // Define the default brightness and colors.
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      primaryColor: Colors.lightBlue[800],
      // buttonTheme: ButtonThemeData(),
      // colorScheme: ColorScheme.fromSwatch(),

      // Define the default font family.
      fontFamily: 'Georgia',

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
