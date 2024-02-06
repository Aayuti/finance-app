import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get theme {
    return ThemeData(
      // Other theme properties
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 16.0), // Example style
        displaySmall: TextStyle(fontSize: 14.0), // Custom style
      ),
      // Other theme configurations
    );
  }
}
