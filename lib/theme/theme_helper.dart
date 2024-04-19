import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:school_project/core/utils/size_utils.dart';
import '../core/app_export.dart';
import '../core/utils/pref_utils.dart';

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.indigo700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray50001,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray100,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 20.fSize,
          fontFamily: 'Montserrat-Arabic',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 18.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFFFC107);
// Black
  Color get black900 => Color(0XFF000000);
// BlueAD
  Color get blueA400D8 => Color(0XD81570EF);
// BlueGray
  Color get blueGray100 => Color(0XFFCCCCCC);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray500 => Color(0XFF607D8B);
  Color get blueGray50001 => Color(0XFF64748B);
  Color get blueGray800 => Color(0XFF3F3D56);
// Gray
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray800 => Color(0XFF494949);
// Green
  Color get greenA700 => Color(0XFF00B505);
// Indigo
  Color get indigo50 => Color(0XFFE2E8F0);
  Color get indigo700 => Color(0XFF3B4D93);
  Color get indigo70001 => Color(0XFF39499C);
// Teal
  Color get teal500 => Color(0XFF009688);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
// Yellow
  Color get yellow900 => Color(0XFFDD7C12);
}
