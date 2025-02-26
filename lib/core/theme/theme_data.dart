import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studyportal/core/theme/constants.dart';

class GlobalThemeData {
  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      focusColor: focusColor,
      useMaterial3: true,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: Color.fromRGBO(38, 48, 83, 1.0),
        ),
        bodyMedium: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: Color.fromRGBO(38, 48, 83, 1.0),
        ),
        bodySmall: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: Color.fromRGBO(38, 48, 83, 1.0),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(99, 102, 117, 1.0)),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: const Color(0xFFE3E2E8), width: 1.w)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: const Color(0xFFE3E2E8), width: 1.w)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: const Color(0xFFE3E2E8), width: 1.w)),
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
