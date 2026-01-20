import 'package:flutter/material.dart';

class AppShadow {
  // Elevation values
  static const double elevationLow = 2.0;
  static const double elevationMedium = 4.0;
  static const double elevationHigh = 8.0;

  // Shadow color - subtle purple tint from Calmify palette (#4A148C)
  static const Color shadowColor = Color(0x1A4A148C); // 10% opacity

  // Subtle shadow for cards and surfaces
  static const List<BoxShadow> subtle = [
    BoxShadow(
      color: shadowColor,
      blurRadius: 4.0,
      offset: Offset(0, 2),
      spreadRadius: 0,
    ),
  ];

  // Medium shadow for elevated elements
  static const List<BoxShadow> medium = [
    BoxShadow(
      color: shadowColor,
      blurRadius: 8.0,
      offset: Offset(0, 4),
      spreadRadius: 0,
    ),
  ];
}
