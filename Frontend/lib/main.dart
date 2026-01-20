import 'package:calmify/app.dart';
import 'package:calmify/di/injection.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependency injection
  configureDependencies();

  runApp(const Calmify());
}
