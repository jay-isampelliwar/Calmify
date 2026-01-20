import 'package:flutter/material.dart';

class AppBorderRadius {
  static BorderRadius get extraSmall =>
      const BorderRadius.all(Radius.circular(4));
  static BorderRadius get small => const BorderRadius.all(Radius.circular(8));
  static BorderRadius get regular =>
      const BorderRadius.all(Radius.circular(12));
  static BorderRadius get medium => const BorderRadius.all(Radius.circular(16));
  static BorderRadius get large => const BorderRadius.all(Radius.circular(20));
  static BorderRadius get extraLarge =>
      const BorderRadius.all(Radius.circular(32));

  static BorderRadius get max => const BorderRadius.all(Radius.circular(999));
  static BorderRadius get bottomSheet => const BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  );
  static BorderRadius get topSheet => const BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
  );
  static BorderRadius get bottomSheetLarge => const BorderRadius.only(
    topLeft: Radius.circular(24),
    topRight: Radius.circular(24),
  );
}
