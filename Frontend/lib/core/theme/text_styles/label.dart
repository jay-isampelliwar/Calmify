import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class ILabelTextStyle {
  TextStyle get large => GoogleFonts.nunitoSans(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 1.2,
    color: AppColors.darkTextPrimary,
  );
  TextStyle get largeRegular => GoogleFonts.nunitoSans(
    fontSize: 18,
    height: 1.2,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get medium => GoogleFonts.nunitoSans(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get mediumRegular => GoogleFonts.nunitoSans(
    fontSize: 16,
    height: 1.3,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get small => GoogleFonts.nunitoSans(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    height: 1.5,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get smallRegular => GoogleFonts.nunitoSans(
    fontSize: 14,
    height: 1.5,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get extraSmall => GoogleFonts.nunitoSans(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: AppColors.darkTextPrimary,
  );
}
