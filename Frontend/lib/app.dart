import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calmify/core/router/app_router.dart';
import 'package:calmify/core/theme/app_theme.dart';
import 'package:calmify/di/injection.dart';
import 'package:calmify/features/exercise/presentation/cubit/exercise_cubit.dart';
import 'package:calmify/features/exercise/presentation/cubit/session_cubit.dart';

class Calmify extends StatelessWidget {
  const Calmify({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ExerciseCubit>(create: (context) => get<ExerciseCubit>()),
        BlocProvider<SessionCubit>(create: (context) => get<SessionCubit>()),
      ],
      child: MaterialApp.router(
        title: 'Calmify',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
