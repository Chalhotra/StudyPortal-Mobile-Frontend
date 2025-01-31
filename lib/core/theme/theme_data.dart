import 'package:flutter/material.dart';
import 'package:studyportal/core/theme/constants.dart';

class GlobalThemeData {
  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      focusColor: focusColor,
      useMaterial3: true,
      textTheme: ThemeData.light().textTheme.apply(
            bodyColor: const Color.fromRGBO(38, 48, 83, 1.0),
            displayColor: const Color.fromRGBO(38, 48, 83, 1.0),
          ),
      fontFamily: "Poppins",
      scaffoldBackgroundColor: const Color(0xFFF0F1F5),
    );
  }

  static final Color _lightFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(_lightColorScheme, _lightFocusColor);

  static const ColorScheme _lightColorScheme = ColorScheme(
    primary: Colors.white,
    onPrimary: Color(StudyPortalConstants.spRoyalBlue),
    secondary: Color(StudyPortalConstants.spRoyalBlue),
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    brightness: Brightness.light,
    surface: Color(StudyPortalConstants.spOffWhite),
    onSurface: Color(StudyPortalConstants.spRoyalBlue),
  );
}
