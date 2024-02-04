import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBlack90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90001,
      );
  // Title text style
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900,
      );
}

extension on TextStyle {
  TextStyle get josefinSans {
    return copyWith(
      fontFamily: 'Josefin Sans',
    );
  }
}
