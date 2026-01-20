import 'package:dartz/dartz.dart';
import 'package:calmify/features/exercise/data/model/exercise.dart';
import 'package:calmify/features/exercise/domain/repository/exercise_repository.dart';

class GetAllExercises {
  final ExerciseRepository repository;

  GetAllExercises(this.repository);

  Future<Either<String, List<Exercise>>> call() async {
    return await repository.getAllExercises();
  }
}
