import 'package:flutter/material.dart';
import 'package:m_s_application6/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan50,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.red300,
        border: Border.all(
          color: appTheme.black90001,
          width: 5.h,
        ),
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        color: appTheme.red300,
        border: Border.all(
          color: appTheme.black90001,
          width: 4.h,
        ),
      );
  static BoxDecoration get outlineBlack900011 => BoxDecoration(
        border: Border.all(
          color: appTheme.black90001,
          width: 4.h,
        ),
      );
  static BoxDecoration get outlineBlack900012 => BoxDecoration(
        color: appTheme.red300,
        border: Border.all(
          color: appTheme.black90001,
          width: 6.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder90 => BorderRadius.circular(
        90.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
