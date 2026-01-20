import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class IHeadingTextStyle {
  TextStyle get large => GoogleFonts.nunitoSans(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    height: 1.18,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get largeRegular => GoogleFonts.nunitoSans(
    fontSize: 34,
    height: 1.18,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get medium => GoogleFonts.nunitoSans(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    height: 1.4,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get mediumRegular => GoogleFonts.nunitoSans(
    fontSize: 24,
    height: 1.4,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get small => GoogleFonts.nunitoSans(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    height: 1.3,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get smallRegular => GoogleFonts.nunitoSans(
    fontSize: 20,
    height: 1.3,
    color: AppColors.darkTextPrimary,
  );
}
