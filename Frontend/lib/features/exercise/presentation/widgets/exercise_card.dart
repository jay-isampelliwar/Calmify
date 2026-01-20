import 'package:flutter/material.dart';
import 'package:calmify/features/exercise/data/model/exercise.dart';
import 'package:calmify/core/theme/index.dart';

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;
  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteToggle;

  const ExerciseCard({
    super.key,
    required this.exercise,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.medium),
      child: InkWell(
        onTap: onTap,
        borderRadius: AppBorderRadius.medium,
        child: Padding(
          padding: AppPadding.medium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with title and favorite button
              Row(
                children: [
                  Expanded(
                    child: Text(
                      exercise.name,
                      style: ITextStyle.title.large,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  AppSpacer.small(),
                  IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color:
                          isFavorite
                              ? AppColors.darkError
                              : AppColors.darkTextSecondary,
                    ),
                    onPressed: onFavoriteToggle,
                  ),
                ],
              ),

              AppSpacer.small(),

              // Description
              Text(
                exercise.description,
                style: ITextStyle.body.largeRegular,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),

              AppSpacer.medium(),

              // Footer with category, difficulty, and duration
              Row(
                children: [
                  // Category chip
                  Container(
                    padding: AppPadding.extraSmall,
                    decoration: BoxDecoration(
                      color: AppColors.darkPrimary.withOpacity(0.2),
                      borderRadius: AppBorderRadius.extraSmall,
                    ),
                    child: Text(
                      _getCategoryDisplayName(exercise.category),
                      style: ITextStyle.label.extraSmall.copyWith(
                        color: AppColors.darkPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  AppSpacer.small(),

                  // Difficulty chip
                  Container(
                    padding: AppPadding.extraSmall,
                    decoration: BoxDecoration(
                      color: _getDifficultyColor(
                        exercise.difficulty,
                      ).withOpacity(0.2),
                      borderRadius: AppBorderRadius.extraSmall,
                    ),
                    child: Text(
                      _getDifficultyDisplayName(exercise.difficulty),
                      style: ITextStyle.label.extraSmall.copyWith(
                        color: _getDifficultyColor(exercise.difficulty),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const Spacer(),

                  // Duration
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 16,
                        color: AppColors.darkTextSecondary,
                      ),
                      AppSpacer.extraSmall(),
                      Text(
                        '${exercise.estimatedDuration.inMinutes} min',
                        style: ITextStyle.body.smallRegular,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getCategoryDisplayName(ExerciseCategory category) {
    switch (category) {
      case ExerciseCategory.basic:
        return 'Basic';
      case ExerciseCategory.pranayama:
        return 'Pranayama';
      case ExerciseCategory.advanced:
        return 'Advanced';
      case ExerciseCategory.therapeutic:
        return 'Therapeutic';
      case ExerciseCategory.mindBody:
        return 'Mind-Body';
    }
  }

  String _getDifficultyDisplayName(DifficultyLevel difficulty) {
    switch (difficulty) {
      case DifficultyLevel.beginner:
        return 'Beginner';
      case DifficultyLevel.intermediate:
        return 'Intermediate';
      case DifficultyLevel.advanced:
        return 'Advanced';
    }
  }

  Color _getDifficultyColor(DifficultyLevel difficulty) {
    switch (difficulty) {
      case DifficultyLevel.beginner:
        return AppColors.darkSuccess;
      case DifficultyLevel.intermediate:
        return AppColors.darkAccent;
      case DifficultyLevel.advanced:
        return AppColors.darkError;
    }
  }
}
