import 'package:flutter/material.dart';

class AppSpacer {
  // Base spacing values (same as padding for consistency)
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;
  static const double xxxl = 32.0;
  static const double huge = 48.0;
  static const double massive = 64.0;

  // Vertical spacers
  static const Widget extraSmall = SizedBox(height: xs, width: xs);
  static const Widget small = SizedBox(height: sm, width: sm);
  static const Widget regular = SizedBox(height: md, width: md);
  static const Widget medium = SizedBox(height: lg, width: lg);
  static const Widget large = SizedBox(height: xl, width: xl);
  static const Widget extraLarge = SizedBox(height: xxl, width: xxl);
  static const Widget extraExtraLarge = SizedBox(height: xxxl, width: xxxl);
}
