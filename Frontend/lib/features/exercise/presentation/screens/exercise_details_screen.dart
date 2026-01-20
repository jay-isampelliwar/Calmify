import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calmify/features/exercise/presentation/cubit/exercise_cubit.dart';
import 'package:calmify/features/exercise/data/model/exercise.dart';
import 'package:calmify/core/theme/index.dart';
import 'package:calmify/core/router/app_router.dart';

class ExerciseDetailsScreen extends StatefulWidget {
  final String exerciseId;

  const ExerciseDetailsScreen({super.key, required this.exerciseId});

  @override
  State<ExerciseDetailsScreen> createState() => _ExerciseDetailsScreenState();
}

class _ExerciseDetailsScreenState extends State<ExerciseDetailsScreen> {
  Exercise? exercise;

  @override
  void initState() {
    super.initState();
    _loadExercise();
  }

  void _loadExercise() {
    final cubit = context.read<ExerciseCubit>();
    final state = cubit.state;

    state.whenOrNull(
      loaded: (exercises) {
        exercise = exercises.firstWhere(
          (e) => e.id == widget.exerciseId,
          orElse: () => throw Exception('Exercise not found'),
        );
        if (mounted) setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(exercise?.name ?? 'Exercise Details'),
        backgroundColor: AppColors.darkPrimary,
        foregroundColor: AppColors.darkTextPrimary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body:
          exercise == null
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Exercise Image Placeholder
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: AppColors.darkPrimary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.air,
                        size: 80,
                        color: AppColors.darkPrimary,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Exercise Title
                    Text(
                      exercise!.name,
                      style: ITextStyle.heading.large.copyWith(
                        color: AppColors.darkTextPrimary,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Category and Difficulty
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.darkAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            exercise!.category.name.toUpperCase(),
                            style: ITextStyle.body.small.copyWith(
                              color: AppColors.darkTextPrimary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.darkSurface,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            exercise!.difficulty.name.toUpperCase(),
                            style: ITextStyle.body.small.copyWith(
                              color: AppColors.darkTextPrimary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Duration
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: AppColors.darkAccent,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Duration: ${_formatDuration(exercise!.estimatedDuration)}',
                          style: ITextStyle.body.medium.copyWith(
                            color: AppColors.darkTextSecondary,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Description
                    Text(
                      'Description',
                      style: ITextStyle.heading.medium.copyWith(
                        color: AppColors.darkTextPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      exercise!.description,
                      style: ITextStyle.body.medium.copyWith(
                        color: AppColors.darkTextSecondary,
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Steps
                    Text(
                      'Steps',
                      style: ITextStyle.heading.medium.copyWith(
                        color: AppColors.darkTextPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ...exercise!.steps.asMap().entries.map((entry) {
                      int index = entry.key + 1;
                      String step = entry.value;
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: AppColors.darkAccent,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  index.toString(),
                                  style: ITextStyle.body.small.copyWith(
                                    color: AppColors.darkTextPrimary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                step,
                                style: ITextStyle.body.medium.copyWith(
                                  color: AppColors.darkTextSecondary,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),

                    const SizedBox(height: 24),

                    // Benefits
                    Text(
                      'Benefits',
                      style: ITextStyle.heading.medium.copyWith(
                        color: AppColors.darkTextPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ...exercise!.benefits.map(
                      (benefit) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: AppColors.darkAccent,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                benefit,
                                style: ITextStyle.body.medium.copyWith(
                                  color: AppColors.darkTextSecondary,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Start Exercise Button
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          AppRouter.goToExercisePlayer(context, exercise!.id);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.darkAccent,
                          foregroundColor: AppColors.darkTextPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Start Exercise',
                          style: ITextStyle.body.large.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
    );
  }

  String _formatDuration(Duration duration) {
    if (duration.inMinutes < 60) {
      return '${duration.inMinutes} min';
    } else {
      int hours = duration.inHours;
      int minutes = duration.inMinutes % 60;
      return minutes > 0 ? '${hours}h ${minutes}m' : '${hours}h';
    }
  }
}
