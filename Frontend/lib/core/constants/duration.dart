import 'package:flutter/material.dart';

class AppDuration {
  // Base duration values (in milliseconds)
  static const int fast = 150;
  static const int normal = 300;
  static const int slow = 500;
  static const int slower = 750;
  static const int slowest = 1000;

  // Duration objects
  static const Duration fastDuration = Duration(milliseconds: fast);
  static const Duration normalDuration = Duration(milliseconds: normal);
  static const Duration slowDuration = Duration(milliseconds: slow);
  static const Duration slowerDuration = Duration(milliseconds: slower);
  static const Duration slowestDuration = Duration(milliseconds: slowest);

  // Micro durations for subtle animations
  static const Duration micro = Duration(milliseconds: 100);
  static const Duration microFast = Duration(milliseconds: 50);
  static const Duration microSlow = Duration(milliseconds: 200);

  // Page transitions
  static const Duration pageTransition = Duration(milliseconds: 300);
  static const Duration pageTransitionFast = Duration(milliseconds: 200);
  static const Duration pageTransitionSlow = Duration(milliseconds: 500);

  // Button interactions
  static const Duration buttonPress = Duration(milliseconds: 100);
  static const Duration buttonRelease = Duration(milliseconds: 150);
  static const Duration buttonHover = Duration(milliseconds: 200);

  // Form interactions
  static const Duration inputFocus = Duration(milliseconds: 200);
  static const Duration inputBlur = Duration(milliseconds: 150);
  static const Duration validation = Duration(milliseconds: 300);

  // Loading states
  static const Duration loading = Duration(milliseconds: 500);
  static const Duration loadingFast = Duration(milliseconds: 300);
  static const Duration loadingSlow = Duration(milliseconds: 1000);

  // Toast and snackbar
  static const Duration toast = Duration(milliseconds: 3000);
  static const Duration toastShort = Duration(milliseconds: 1500);
  static const Duration toastLong = Duration(milliseconds: 5000);
  static const Duration snackbar = Duration(milliseconds: 4000);

  // Dialog and modal
  static const Duration dialogShow = Duration(milliseconds: 300);
  static const Duration dialogHide = Duration(milliseconds: 200);
  static const Duration modalShow = Duration(milliseconds: 400);
  static const Duration modalHide = Duration(milliseconds: 300);

  // List and grid animations
  static const Duration listItem = Duration(milliseconds: 200);
  static const Duration gridItem = Duration(milliseconds: 250);
  static const Duration staggeredItem = Duration(milliseconds: 100);

  // Carousel and slider
  static const Duration carousel = Duration(milliseconds: 500);
  static const Duration slider = Duration(milliseconds: 300);
  static const Duration indicator = Duration(milliseconds: 200);

  // Progress and loading indicators
  static const Duration progress = Duration(milliseconds: 400);
  static const Duration spinner = Duration(milliseconds: 1000);
  static const Duration shimmer = Duration(milliseconds: 1500);

  // Custom duration builder
  static Duration custom(int milliseconds) =>
      Duration(milliseconds: milliseconds);
  static Duration seconds(int seconds) => Duration(seconds: seconds);
  static Duration minutes(int minutes) => Duration(minutes: minutes);

  // Animation curves (not const since Curves are not const)
  static final Curve defaultCurve = Curves.easeInOut;
  static final Curve fastCurve = Curves.easeIn;
  static final Curve slowCurve = Curves.easeOut;
  static final Curve bounceCurve = Curves.bounceOut;
  static final Curve elasticCurve = Curves.elasticOut;
  static final Curve springCurve = Curves.elasticInOut;
}
