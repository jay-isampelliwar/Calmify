import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:calmify/features/exercise/data/model/exercise.dart';

part 'exercise_state.dart';
part 'exercise_cubit.freezed.dart';

class ExerciseCubit extends Cubit<ExerciseState> {
  ExerciseCubit() : super(ExerciseState.initial());
}
