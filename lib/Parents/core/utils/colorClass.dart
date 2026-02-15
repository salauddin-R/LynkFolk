import 'package:flutter/material.dart';

class color {
  static Color onbordingTop = const Color(0xFFFCFCFC);
  static Color onbordingBottom = const Color(0xFFE4F4FF);
  static Color fellingColor = const Color(0xFF8A2CE2);
  static Color AuthBackTop = const Color(0xFFEBC894);
  static Color AuthBackBottom = const Color(0xFFC99EF2);
  static Color TeenTop = const Color(0xFFFBFBFB);
  static Color TeenBottom = const Color(0xFFFFEEEE);
  static Color DarkWhite = const Color(0xFFFFFFFF);
  static Color PrivacyColor = const Color(0xFFCDEBFF);
  static Color Blue=const Color(0xFF4D81E7);
  static Color Red=const Color(0xFFFF1D1D);
  static Color Greay=const Color(0xFF9B9B9B);
  static Color Black = const Color(0xFF24160E);
  static Color DarkGray = const Color(0xFF515151);
  static Color WithColor = const Color(0xFFFCFCFC);
  static Color Glass = const Color(0xFFE4F4FF);
  static Color OpenTool = const Color(0xFFFFB469);
  static Color Green = const Color(0xFF1ECE93);
  static Color favoriteColor = const Color(0xFFF3EAFC);
  static Color BaguniColor = const Color(0xFF3A125F);
  static Color WaterColor = const Color(0xFFDBBEF64D);

  static BoxDecoration linearGradient({
    required Color topColor,
    required Color bottomColor,
  }) {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          topColor,
          bottomColor,
        ],
      ),
    );
  }

  static BoxDecoration CircleGradient({
    required Color topColor,
    required Color bottomColor,
  }) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          topColor,
          bottomColor,
        ],
      ),
    );
  }

  static BoxDecoration  AuthDecoration(){
    return BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: color.DarkWhite.withOpacity(0.6)
    );
  }
}
