import 'package:get_it/get_it.dart';
import 'package:calmify/features/exercise/data/repository/exercise_repository_impl.dart';
import 'package:calmify/features/exercise/domain/repository/exercise_repository.dart';
import 'package:calmify/features/exercise/domain/usecases/get_all_exercises.dart';
import 'package:calmify/features/exercise/presentation/cubit/exercise_cubit.dart';
import 'package:calmify/features/exercise/presentation/cubit/session_cubit.dart';

final GetIt getIt = GetIt.instance;

/// Initialize all dependencies manually
void configureDependencies() {
  _registerRepositories();
  _registerUseCases();
  _registerServices();
  _registerBlocs();
}

/// Register all repository implementations
void _registerRepositories() {
  getIt.registerLazySingleton<ExerciseRepository>(
    () => ExerciseRepositoryImpl(),
  );
}

/// Register all use cases
void _registerUseCases() {
  getIt.registerLazySingleton<GetAllExercises>(
    () => GetAllExercises(getIt<ExerciseRepository>()),
  );
}

/// Register all services
void _registerServices() {}

/// Register all blocs/cubits
void _registerBlocs() {
  getIt.registerFactory<ExerciseCubit>(() => ExerciseCubit());
  getIt.registerFactory<SessionCubit>(() => SessionCubit());
}

/// Call this function to get a registered dependency
T get<T extends Object>() => getIt.get<T>();

/// Call this function to get a registered dependency with a name
T getNamed<T extends Object>(String name) => getIt.get<T>(instanceName: name);
