import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:calmify/shared/presentation/screens/splash_screen.dart';
import 'package:calmify/shared/presentation/screens/home_screen.dart';
import 'package:calmify/features/exercise/presentation/screens/exercise_details_screen.dart';

class AppRouter {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String home = '/home';
  static const String exerciseDetails = '/exercise/:id';
  static const String sessionSetup = '/session-setup/:exerciseId';
  static const String exercisePlayer = '/session/:sessionId';
  static const String sessionSummary = '/session/:sessionId/summary';
  static const String favorites = '/favorites';
  static const String settings = '/settings';
  static const String help = '/help';
  static const String about = '/about';

  static GoRouter router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),

      GoRoute(
        path: home,
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/exercise/:id',
        name: 'exerciseDetails',
        builder: (context, state) {
          final exerciseId = state.pathParameters['id']!;
          return ExerciseDetailsScreen(exerciseId: exerciseId);
        },
      ),
      // GoRoute(
      //   path: '/session/:exerciseId',
      //   name: 'exercisePlayer',
      //   builder: (context, state) {
      //     final exerciseId = state.pathParameters['exerciseId']!;
      //     return ExercisePlayerScreen(exerciseId: exerciseId);
      //   },
      // ),
    ],
  );

  // Helper methods for navigation
  static void goToSplash(BuildContext context) => context.go(splash);
  static void goToOnboarding(BuildContext context) => context.go(onboarding);
  static void goToHome(BuildContext context) => context.go(home);
  static void goToExerciseDetails(BuildContext context, String id) =>
      context.go('/exercise/$id');
  static void goToSessionSetup(BuildContext context, String exerciseId) =>
      context.go('/session-setup/$exerciseId');
  static void goToExercisePlayer(BuildContext context, String exerciseId) =>
      context.go('/session/$exerciseId');
  static void goToSessionSummary(BuildContext context, String sessionId) =>
      context.go('/session/$sessionId/summary');
  static void goToFavorites(BuildContext context) => context.go(favorites);
  static void goToSettings(BuildContext context) => context.go(settings);
  static void goToHelp(BuildContext context) => context.go(help);
  static void goToAbout(BuildContext context) => context.go(about);
}
