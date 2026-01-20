import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:calmify/features/exercise/data/model/session.dart';

part 'session_state.dart';
part 'session_cubit.freezed.dart';

class SessionCubit extends Cubit<SessionState> {
  SessionCubit() : super(SessionState.initial());
}
