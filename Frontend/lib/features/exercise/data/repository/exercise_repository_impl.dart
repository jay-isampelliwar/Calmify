import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:calmify/features/exercise/data/model/exercise.dart';
import 'package:calmify/features/exercise/domain/repository/exercise_repository.dart';
import 'package:flutter/services.dart';

class ExerciseRepositoryImpl implements ExerciseRepository {
  @override
  Future<Either<String, List<Exercise>>> getAllExercises() async {
    try {
      final String jsonString = await rootBundle.loadString(
        'assets/data/exercise_data.json',
      );
      final List<dynamic> jsonList = json.decode(jsonString);
      final rawExercises = jsonList.cast<Map<String, dynamic>>();
      final exercises =
          rawExercises.map((data) => _mapToExercise(data)).toList();
      return Right(exercises);
    } catch (e) {
      return Left('Failed to load exercises: $e');
    }
  }

  Exercise _mapToExercise(Map<String, dynamic> data) {
    return Exercise(
      id: data['id'] ?? '',
      name: data['name'] ?? '',
      description: data['description'] ?? '',
      steps: List<String>.from(data['steps'] ?? []),
      benefits: List<String>.from(data['benefits'] ?? []),
      category: _mapToCategory(data['category'] ?? 'basic'),
      difficulty: _mapToDifficulty(data['difficulty'] ?? 'beginner'),
      estimatedDuration: Duration(minutes: data['estimatedDuration'] ?? 5),
      imageUrl: data['imageUrl'] ?? '',
    );
  }

  ExerciseCategory _mapToCategory(String category) {
    switch (category.toLowerCase()) {
      case 'pranayama':
        return ExerciseCategory.pranayama;
      case 'advanced':
        return ExerciseCategory.advanced;
      case 'therapeutic':
        return ExerciseCategory.therapeutic;
      case 'mindbody':
        return ExerciseCategory.mindBody;
      default:
        return ExerciseCategory.basic;
    }
  }

  DifficultyLevel _mapToDifficulty(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'intermediate':
        return DifficultyLevel.intermediate;
      case 'advanced':
        return DifficultyLevel.advanced;
      default:
        return DifficultyLevel.beginner;
    }
  }
}
