part of 'session_cubit.dart';

@freezed
class SessionState with _$SessionState {
  const factory SessionState.initial() = _Initial;
  const factory SessionState.loaded(Session session) = _Loaded;
  const factory SessionState.completed(Session session) = _Completed;
  const factory SessionState.error(String message) = _Error;
}
