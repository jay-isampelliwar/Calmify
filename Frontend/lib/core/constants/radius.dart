import 'package:flutter/material.dart';

class AppRadius {
  // Base radius values
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;
  static const double xxxl = 32.0;

  // BorderRadius helpers
  static const BorderRadius extraSmall = BorderRadius.all(Radius.circular(xs));
  static const BorderRadius small = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius regular = BorderRadius.all(Radius.circular(md));
  static const BorderRadius medium = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius large = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius semiLarge = BorderRadius.all(Radius.circular(xxl));
  static const BorderRadius extraLarge = BorderRadius.all(
    Radius.circular(xxxl),
  );
}
