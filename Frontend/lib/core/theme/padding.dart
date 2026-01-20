import 'package:flutter/material.dart';

class AppPadding {
  static EdgeInsetsGeometry get extraSmall => const EdgeInsets.all(4);
  static EdgeInsetsGeometry get small => const EdgeInsets.all(8);
  static EdgeInsetsGeometry get regular => const EdgeInsets.all(12);
  static EdgeInsetsGeometry get medium => const EdgeInsets.all(16);
  static EdgeInsetsGeometry get large => const EdgeInsets.all(20);
  static EdgeInsetsGeometry get extraLarge => const EdgeInsets.all(24);

  // Horizontal Spacing
  static EdgeInsetsGeometry get horizontalExtraSmall =>
      const EdgeInsets.symmetric(horizontal: 4);
  static EdgeInsetsGeometry get horizontalSmall =>
      const EdgeInsets.symmetric(horizontal: 8);
  static EdgeInsetsGeometry get horizontalRegular =>
      const EdgeInsets.symmetric(horizontal: 12);
  static EdgeInsetsGeometry get horizontalMedium =>
      const EdgeInsets.symmetric(horizontal: 16);
  static EdgeInsetsGeometry get horizontalLarge =>
      const EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsetsGeometry get horizontalExtraLarge =>
      const EdgeInsets.symmetric(horizontal: 24);

  // Vertical Spacing
  static EdgeInsetsGeometry get verticalExtraSmall =>
      const EdgeInsets.symmetric(vertical: 4);
  static EdgeInsetsGeometry get verticalSmall =>
      const EdgeInsets.symmetric(vertical: 8);
  static EdgeInsetsGeometry get verticalRegular =>
      const EdgeInsets.symmetric(vertical: 12);
  static EdgeInsetsGeometry get verticalMedium =>
      const EdgeInsets.symmetric(vertical: 16);
  static EdgeInsetsGeometry get verticalLarge =>
      const EdgeInsets.symmetric(vertical: 20);
  static EdgeInsetsGeometry get verticalExtraLarge =>
      const EdgeInsets.symmetric(vertical: 24);

  static EdgeInsetsGeometry get buttonPadding =>
      EdgeInsets.symmetric(vertical: 16, horizontal: 20);

  static EdgeInsetsGeometry get outlinedButtonPadding =>
      EdgeInsets.symmetric(vertical: 14.8, horizontal: 20);

  static EdgeInsetsGeometry get chipPadding =>
      EdgeInsets.symmetric(vertical: 6, horizontal: 16);
}
