import 'package:calmify/core/constants/padding.dart';
import 'package:calmify/core/router/app_router.dart';
import 'package:calmify/core/theme/border_radius.dart';
import 'package:calmify/core/theme/colors.dart';
import 'package:calmify/core/theme/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calmify/features/exercise/presentation/cubit/exercise_cubit.dart';
import 'package:calmify/features/exercise/data/model/exercise.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _selectedCategory = 'all';
  final String _selectedDifficulty = 'all';
  List<Exercise> _filteredExercises = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterExercises(List<Exercise> exercises) {
    setState(() {
      _filteredExercises =
          exercises.where((exercise) {
            final matchesSearch =
                exercise.name.toLowerCase().contains(
                  _searchController.text.toLowerCase(),
                ) ||
                exercise.description.toLowerCase().contains(
                  _searchController.text.toLowerCase(),
                );

            final matchesCategory =
                _selectedCategory == 'all' ||
                exercise.category.name.toLowerCase() ==
                    _selectedCategory.toLowerCase();

            final matchesDifficulty =
                _selectedDifficulty == 'all' ||
                exercise.difficulty.name.toLowerCase() ==
                    _selectedDifficulty.toLowerCase();

            return matchesSearch && matchesCategory && matchesDifficulty;
          }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: BlocBuilder<ExerciseCubit, ExerciseState>(
          builder: (context, state) {
            return state.when(
              initial: () => _buildWelcomeState(),
              loading: () => _buildLoadingState(),
              loaded: (exercises) {
                if (_filteredExercises.isEmpty &&
                    _searchController.text.isEmpty) {
                  _filteredExercises = exercises;
                }
                return _buildLoadedState(exercises);
              },
              error: (message) => _buildErrorState(message),
            );
          },
        ),
      ),
    );
  }

  Widget _buildWelcomeState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.self_improvement, size: 80, color: AppColors.darkPrimary),
          const SizedBox(height: 24),
          Text(
            'Welcome to Calmify',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppColors.darkTextPrimary,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Your journey to inner peace begins here',
            style: TextStyle(fontSize: 16, color: AppColors.darkTextSecondary),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(color: AppColors.darkPrimary),
          const SizedBox(height: 24),
          Text(
            'Loading breathing exercises...',
            style: TextStyle(fontSize: 16, color: AppColors.darkTextSecondary),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadedState(List<Exercise> exercises) {
    return Column(
      children: [
        _buildAppBar(),
        _buildSearchAndFilters(),
        AppSpacer.medium(),
        Expanded(
          child:
              _filteredExercises.isEmpty
                  ? _buildEmptyState()
                  : _buildExercisesList(),
        ),
      ],
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: AppPadding.large,
      child: Row(
        children: [
          Icon(Icons.self_improvement, size: 32, color: AppColors.darkPrimary),
          const SizedBox(width: 12),
          Text(
            'Calmify',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.darkTextPrimary,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              // TODO: Implement settings
            },
            icon: Icon(Icons.settings, color: AppColors.darkTextSecondary),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchAndFilters() {
    return Container(
      padding: AppPadding.largeHorizontal,
      child: Column(
        children: [
          // Search Bar
          Container(
            decoration: BoxDecoration(
              color: AppColors.darkSurface,
              borderRadius: AppBorderRadius.regular,
              border: Border.all(color: AppColors.darkDivider.withOpacity(0.3)),
            ),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                final exercises = context.read<ExerciseCubit>().state.maybeWhen(
                  loaded: (exercises) => exercises,
                  orElse: () => <Exercise>[],
                );
                _filterExercises(exercises);
              },
              style: TextStyle(color: AppColors.darkTextPrimary),
              decoration: InputDecoration(
                hintText: 'Search breathing exercises...',
                hintStyle: TextStyle(color: AppColors.darkTextSecondary),
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.darkTextSecondary,
                ),
                border: InputBorder.none,
                contentPadding: AppPadding.medium,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Filter Chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildFilterChip('All', 'all', _selectedCategory, (value) {
                  setState(() {
                    _selectedCategory = value;
                    final exercises = context
                        .read<ExerciseCubit>()
                        .state
                        .maybeWhen(
                          loaded: (exercises) => exercises,
                          orElse: () => <Exercise>[],
                        );
                    _filterExercises(exercises);
                  });
                }),
                const SizedBox(width: 8),
                _buildFilterChip('Basic', 'basic', _selectedCategory, (value) {
                  setState(() {
                    _selectedCategory = value;
                    final exercises = context
                        .read<ExerciseCubit>()
                        .state
                        .maybeWhen(
                          loaded: (exercises) => exercises,
                          orElse: () => <Exercise>[],
                        );
                    _filterExercises(exercises);
                  });
                }),
                const SizedBox(width: 8),
                _buildFilterChip('Pranayama', 'pranayama', _selectedCategory, (
                  value,
                ) {
                  setState(() {
                    _selectedCategory = value;
                    final exercises = context
                        .read<ExerciseCubit>()
                        .state
                        .maybeWhen(
                          loaded: (exercises) => exercises,
                          orElse: () => <Exercise>[],
                        );
                    _filterExercises(exercises);
                  });
                }),
                const SizedBox(width: 8),
                _buildFilterChip('Advanced', 'advanced', _selectedCategory, (
                  value,
                ) {
                  setState(() {
                    _selectedCategory = value;
                    final exercises = context
                        .read<ExerciseCubit>()
                        .state
                        .maybeWhen(
                          loaded: (exercises) => exercises,
                          orElse: () => <Exercise>[],
                        );
                    _filterExercises(exercises);
                  });
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(
    String label,
    String value,
    String selectedValue,
    Function(String) onSelected,
  ) {
    final isSelected = selectedValue == value;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) => onSelected(value),
      selectedColor: AppColors.darkPrimary.withOpacity(0.3),
      checkmarkColor: AppColors.darkTextPrimary,
      labelStyle: TextStyle(
        color:
            isSelected
                ? AppColors.darkTextPrimary
                : AppColors.darkTextSecondary,
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
      ),
      backgroundColor: AppColors.darkSurface,
      side: BorderSide(
        color:
            isSelected
                ? AppColors.darkPrimary
                : AppColors.darkDivider.withOpacity(0.3),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off, size: 64, color: AppColors.darkTextSecondary),
          const SizedBox(height: 16),
          Text(
            'No exercises found',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.darkTextPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Try adjusting your search or filters',
            style: TextStyle(fontSize: 14, color: AppColors.darkTextSecondary),
          ),
        ],
      ),
    );
  }

  Widget _buildExercisesList() {
    return ListView.builder(
      padding: AppPadding.largeHorizontal,
      itemCount: _filteredExercises.length,
      itemBuilder: (context, index) {
        final exercise = _filteredExercises[index];
        return _buildExerciseCard(exercise);
      },
    );
  }

  Widget _buildExerciseCard(Exercise exercise) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.darkSurface,
        borderRadius: AppBorderRadius.medium,
        border: Border.all(color: AppColors.darkDivider.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: AppBorderRadius.medium,
          onTap: () {
            AppRouter.goToExerciseDetails(context, exercise.id);
          },
          child: Padding(
            padding: AppPadding.large,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        exercise.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.darkTextPrimary,
                        ),
                      ),
                    ),
                    _buildDifficultyBadge(exercise.difficulty.name),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  exercise.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.darkTextSecondary,
                    height: 1.4,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    _buildCategoryChip(exercise.category.name),
                    const SizedBox(width: 8),
                    _buildDurationChip(exercise.estimatedDuration.inMinutes),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: AppColors.darkTextSecondary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDifficultyBadge(String difficulty) {
    Color badgeColor;
    switch (difficulty.toLowerCase()) {
      case 'beginner':
        badgeColor = AppColors.darkSuccess;
        break;
      case 'intermediate':
        badgeColor = AppColors.darkAccent;
        break;
      case 'advanced':
        badgeColor = AppColors.darkError;
        break;
      default:
        badgeColor = AppColors.darkTextSecondary;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: badgeColor.withOpacity(0.2),
        borderRadius: AppBorderRadius.small,
        border: Border.all(color: badgeColor.withOpacity(0.5)),
      ),
      child: Text(
        difficulty.toUpperCase(),
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: badgeColor,
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String category) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.darkPrimary.withOpacity(0.2),
        borderRadius: AppBorderRadius.small,
      ),
      child: Text(
        category.toUpperCase(),
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: AppColors.darkPrimary,
        ),
      ),
    );
  }

  Widget _buildDurationChip(int duration) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.darkTextSecondary.withOpacity(0.2),
        borderRadius: AppBorderRadius.small,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.access_time, size: 12, color: AppColors.darkTextSecondary),
          const SizedBox(width: 4),
          Text(
            '${duration}min',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.darkTextSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String message) {
    return Center(
      child: Padding(
        padding: AppPadding.large,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: AppColors.darkError),
            const SizedBox(height: 24),
            Text(
              'Something went wrong',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.darkTextPrimary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.darkTextSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.refresh),
              label: const Text('Try Again'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.darkPrimary,
                foregroundColor: AppColors.darkTextPrimary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: AppBorderRadius.regular,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
