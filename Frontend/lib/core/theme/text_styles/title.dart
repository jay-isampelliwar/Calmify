import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class ITitleTextStyle {
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
    fontWeight: FontWeight.normal,
    height: 1.5,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get extraSmallBold => GoogleFonts.nunitoSans(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    height: 1.2,
    color: AppColors.darkTextPrimary,
  );
  TextStyle get extraSmallRegular => GoogleFonts.nunitoSans(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.2,
    color: AppColors.darkTextPrimary,
  );
}
