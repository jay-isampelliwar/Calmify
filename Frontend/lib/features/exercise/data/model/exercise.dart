import 'package:equatable/equatable.dart';

enum DifficultyLevel { beginner, intermediate, advanced }

enum ExerciseCategory { basic, pranayama, advanced, therapeutic, mindBody }

class Exercise extends Equatable {
  final String id;
  final String name;
  final String description;
  final List<String> steps;
  final List<String> benefits;
  final ExerciseCategory category;
  final DifficultyLevel difficulty;
  final Duration estimatedDuration;
  final String imageUrl;

  const Exercise({
    required this.id,
    required this.name,
    required this.description,
    required this.steps,
    required this.benefits,
    required this.category,
    required this.difficulty,
    required this.estimatedDuration,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    steps,
    benefits,
    category,
    difficulty,
    estimatedDuration,
    imageUrl,
  ];

  Exercise copyWith({
    String? id,
    String? name,
    String? description,
    List<String>? steps,
    List<String>? benefits,
    ExerciseCategory? category,
    DifficultyLevel? difficulty,
    Duration? estimatedDuration,
    String? imageUrl,
  }) {
    return Exercise(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      steps: steps ?? this.steps,
      benefits: benefits ?? this.benefits,
      category: category ?? this.category,
      difficulty: difficulty ?? this.difficulty,
      estimatedDuration: estimatedDuration ?? this.estimatedDuration,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}
