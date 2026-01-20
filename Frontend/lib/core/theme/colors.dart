import 'package:flutter/material.dart';

class AppColors {
  // Light Theme
  static const Color lightPrimary = Color(0xFFB39DDB); // Lavender
  static const Color lightAccent = Color(0xFFFFCC80); // Peach
  static const Color lightBackground = Color(0xFFF3E5F5); // Light Lilac
  static const Color lightSurface = Color(0xFFFFFFFF); // White
  static const Color lightTextPrimary = Color(0xFF4A148C); // Deep Purple
  static const Color lightTextSecondary = Color(0xFF6A1B9A); // Purple
  static const Color lightSuccess = Color(0xFFA5D6A7); // Mint
  static const Color lightError = Color(0xFFE57373); // Soft Red
  static const Color lightDivider = Color(0xFFE1BEE7); // Pale Lavender
  static const Color lightAccentDark = Color(0xFF8E24AA); // Vivid Purple

  // Dark Theme
  static const Color darkBackground = Color(0xFF2E1A47); // Dark Purple
  static const Color darkSurface = Color(0xFF382B5F); // Eggplant
  static const Color darkPrimary = Color(0xFF9575CD); // Medium Purple
  static const Color darkAccent = Color(0xFFFFAB91); // Coral Pink
  static const Color darkTextPrimary = Color(0xFFEDE7F6); // Pale Lilac
  static const Color darkTextSecondary = Color(0xFFD1C4E9); // Soft Lavender
  static const Color darkDivider = Color(0xFF5E35B1); // Rich Purple
  static const Color darkSuccess = Color(0xFF81C784); // Mint Green
  static const Color darkError = Color(0xFFE57373); // Soft Red
  static const Color darkAccentDark = Color(0xFF7B1FA2); // Dark Magenta
}

// Example ThemeData usage
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.lightPrimary,
  scaffoldBackgroundColor: AppColors.lightBackground,
  dividerColor: AppColors.lightDivider,
  textTheme: TextTheme(
    titleLarge: TextStyle(color: AppColors.lightTextPrimary),
    bodyMedium: TextStyle(color: AppColors.lightTextSecondary),
  ),
  colorScheme: ColorScheme.light(
        primary: AppColors.lightPrimary,
        secondary: AppColors.lightAccent,
        surface: AppColors.lightSurface,
        error: AppColors.lightError,
        onPrimary: AppColors.lightTextPrimary,
        onSecondary: AppColors.lightTextPrimary,
        onSurface: AppColors.lightTextPrimary,
        onError: AppColors.lightTextPrimary,
      )
      .copyWith(secondary: AppColors.lightAccent)
      .copyWith(surface: AppColors.lightSurface)
      .copyWith(error: AppColors.lightError),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.darkPrimary,
  scaffoldBackgroundColor: AppColors.darkBackground,
  dividerColor: AppColors.darkDivider,
  textTheme: TextTheme(
    titleLarge: TextStyle(color: AppColors.darkTextPrimary),
    bodyMedium: TextStyle(color: AppColors.darkTextSecondary),
  ),
  colorScheme: ColorScheme.dark(
        primary: AppColors.darkPrimary,
        secondary: AppColors.darkAccent,
        surface: AppColors.darkSurface,
        error: AppColors.darkError,
        onPrimary: AppColors.darkTextPrimary,
        onSecondary: AppColors.darkTextPrimary,
        onSurface: AppColors.darkTextPrimary,
        onError: AppColors.darkTextPrimary,
      )
      .copyWith(secondary: AppColors.darkAccent)
      .copyWith(surface: AppColors.darkSurface)
      .copyWith(error: AppColors.darkError),
);
