import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class IBodyTextStyle {
  TextStyle get large => GoogleFonts.nunitoSans(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    height: 1.5,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get largeRegular => GoogleFonts.nunitoSans(
    fontSize: 14,
    height: 1.5,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get medium => GoogleFonts.nunitoSans(
    fontSize: 12,
    height: 1.2,
    fontWeight: FontWeight.bold,
    color: AppColors.darkTextPrimary,
  );
  TextStyle get mediumRegular => GoogleFonts.nunitoSans(
    fontSize: 12,
    height: 1.2,
    color: AppColors.darkTextPrimary,
  );
  TextStyle get mediumBold => GoogleFonts.nunitoSans(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    height: 1.2,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get small => GoogleFonts.nunitoSans(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    height: 1.3,
    color: AppColors.darkTextPrimary,
  );

  TextStyle get smallRegular => GoogleFonts.nunitoSans(
    fontSize: 11,
    height: 1.3,
    color: AppColors.darkTextPrimary,
  );
}
