import 'package:flutter/material.dart';

class AppPadding {
  // Small padding values
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;
  static const double xxxl = 32.0;

  // EdgeInsets helpers
  static const EdgeInsets extraSmall = EdgeInsets.all(xs);
  static const EdgeInsets small = EdgeInsets.all(sm);
  static const EdgeInsets regular = EdgeInsets.all(md);
  static const EdgeInsets medium = EdgeInsets.all(lg);
  static const EdgeInsets large = EdgeInsets.all(xl);
  static const EdgeInsets semiLarge = EdgeInsets.all(xxl);
  static const EdgeInsets extraLarge = EdgeInsets.all(xxxl);

  // Horizontal padding
  static const EdgeInsets extraSmallHorizontal = EdgeInsets.symmetric(
    horizontal: xs,
  );
  static const EdgeInsets smallHorizontal = EdgeInsets.symmetric(
    horizontal: sm,
  );
  static const EdgeInsets regularHorizontal = EdgeInsets.symmetric(
    horizontal: md,
  );
  static const EdgeInsets mediumHorizontal = EdgeInsets.symmetric(
    horizontal: lg,
  );
  static const EdgeInsets largeHorizontal = EdgeInsets.symmetric(
    horizontal: xl,
  );

  // Vertical padding
  static const EdgeInsets extraSmallVertical = EdgeInsets.symmetric(
    vertical: xs,
  );
  static const EdgeInsets smallVertical = EdgeInsets.symmetric(vertical: sm);
  static const EdgeInsets regularVertical = EdgeInsets.symmetric(vertical: md);
  static const EdgeInsets mediumVertical = EdgeInsets.symmetric(vertical: lg);
  static const EdgeInsets largeVertical = EdgeInsets.symmetric(vertical: xl);
}
