import 'package:calmify/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'body.dart';
import 'heading.dart';
import 'label.dart';
import 'title.dart';

class ITextStyle {
  static IHeadingTextStyle get heading => IHeadingTextStyle();
  static ILabelTextStyle get label => ILabelTextStyle();
  static ITitleTextStyle get title => ITitleTextStyle();
  static IBodyTextStyle get body => IBodyTextStyle();
}

class IFontStyle {
  TextStyle get extraLarge => GoogleFonts.redHatDisplay(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    height: 1.18,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get extraLargeRegular => GoogleFonts.redHatDisplay(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    height: 1.18,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get semiLarge => GoogleFonts.redHatDisplay(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    height: 1.20,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get semiLargeRegular => GoogleFonts.redHatDisplay(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    height: 1.20,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get large => GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 1.25,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get largeRegular => GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    height: 1.25,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get medium => GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    height: 1.25,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get mediumRegular => GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.25,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get small => GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    height: 1.29,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get smallRegular => GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.29,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get extraSmall => GoogleFonts.montserrat(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    height: 1.33,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get extraSmallRegular => GoogleFonts.montserrat(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    height: 1.33,
    color: AppColors.darkTextPrimary,
  );
}
