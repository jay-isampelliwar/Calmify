import 'package:dartz/dartz.dart';
import 'package:calmify/features/exercise/data/model/exercise.dart';

abstract class ExerciseRepository {
  Future<Either<String, List<Exercise>>> getAllExercises();
  // Future<Either<String, Exercise>> getExerciseById(String id);
  // Future<Either<String, List<Exercise>>> getExercisesByCategory(
  //   ExerciseCategory category,
  // );
  // Future<Either<String, List<Exercise>>> searchExercises(String query);
  // Future<Either<String, List<Exercise>>> getFavoriteExercises();
  // Future<Either<String, void>> addToFavorites(String exerciseId);
  // Future<Either<String, void>> removeFromFavorites(String exerciseId);
  // Future<Either<String, bool>> isFavorite(String exerciseId);
}
