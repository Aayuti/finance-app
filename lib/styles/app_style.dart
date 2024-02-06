import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color mainColor = const Color(0xFF181818);
  static Color componentColor = const Color(0xFFF1CBEF);
  static Color bgColor = const Color(0xFFF1F5F7);

  // static List<Color> cardsColor = []
  static TextStyle mainText =
      GoogleFonts.comfortaa(fontSize: 18.0, fontWeight: FontWeight.normal)
          as TextStyle;

  static TextStyle mainContent =
      GoogleFonts.concertOne(fontSize: 24.0, fontWeight: FontWeight.normal)
          as TextStyle;
}
