import 'package:flutter/material.dart';
import 'package:school_project/core/utils/size_utils.dart';
import 'package:school_project/theme/theme_helper.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillIndigoTL8 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigo70001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
// text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
