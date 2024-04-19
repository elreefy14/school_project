import 'package:flutter/material.dart';
import 'package:school_project/core/utils/size_utils.dart';
import 'package:school_project/theme/theme_helper.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo70001,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder37 => BorderRadius.circular(
        37.h,
      );
}
