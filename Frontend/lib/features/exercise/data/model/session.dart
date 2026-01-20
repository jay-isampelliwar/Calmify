import 'package:equatable/equatable.dart';
import 'package:calmify/features/exercise/data/model/exercise.dart';

enum SessionStatus { notStarted, inProgress, paused, completed, cancelled }

class Session extends Equatable {
  final String id;
  final Exercise exercise;
  final SessionStatus status;
  final DateTime startTime;
  final DateTime? endTime;
  final Duration totalDuration;
  final int currentStepIndex;
  final List<SessionStep> steps;
  final SessionSettings settings;

  const Session({
    required this.id,
    required this.exercise,
    required this.status,
    required this.startTime,
    this.endTime,
    required this.totalDuration,
    required this.currentStepIndex,
    required this.steps,
    required this.settings,
  });

  @override
  List<Object?> get props => [
    id,
    exercise,
    status,
    startTime,
    endTime,
    totalDuration,
    currentStepIndex,
    steps,
    settings,
  ];

  Session copyWith({
    String? id,
    Exercise? exercise,
    SessionStatus? status,
    DateTime? startTime,
    DateTime? endTime,
    Duration? totalDuration,
    int? currentStepIndex,
    List<SessionStep>? steps,
    SessionSettings? settings,
  }) {
    return Session(
      id: id ?? this.id,
      exercise: exercise ?? this.exercise,
      status: status ?? this.status,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      totalDuration: totalDuration ?? this.totalDuration,
      currentStepIndex: currentStepIndex ?? this.currentStepIndex,
      steps: steps ?? this.steps,
      settings: settings ?? this.settings,
    );
  }
}

class SessionStep extends Equatable {
  final int index;
  final String instruction;
  final Duration duration;
  final String? breathingPattern; // e.g., "inhale", "hold", "exhale"
  final bool isCompleted;

  const SessionStep({
    required this.index,
    required this.instruction,
    required this.duration,
    this.breathingPattern,
    required this.isCompleted,
  });

  @override
  List<Object?> get props => [
    index,
    instruction,
    duration,
    breathingPattern,
    isCompleted,
  ];

  SessionStep copyWith({
    int? index,
    String? instruction,
    Duration? duration,
    String? breathingPattern,
    bool? isCompleted,
  }) {
    return SessionStep(
      index: index ?? this.index,
      instruction: instruction ?? this.instruction,
      duration: duration ?? this.duration,
      breathingPattern: breathingPattern ?? this.breathingPattern,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

class SessionSettings extends Equatable {
  final double speechRate;
  final double volume;
  final double pitch;
  final bool hapticFeedback;
  final bool backgroundAudio;

  const SessionSettings({
    this.speechRate = 0.5,
    this.volume = 1.0,
    this.pitch = 1.0,
    this.hapticFeedback = true,
    this.backgroundAudio = true,
  });

  @override
  List<Object?> get props => [
    speechRate,
    volume,
    pitch,
    hapticFeedback,
    backgroundAudio,
  ];

  SessionSettings copyWith({
    double? speechRate,
    double? volume,
    double? pitch,
    bool? hapticFeedback,
    bool? backgroundAudio,
  }) {
    return SessionSettings(
      speechRate: speechRate ?? this.speechRate,
      volume: volume ?? this.volume,
      pitch: pitch ?? this.pitch,
      hapticFeedback: hapticFeedback ?? this.hapticFeedback,
      backgroundAudio: backgroundAudio ?? this.backgroundAudio,
    );
  }
}
