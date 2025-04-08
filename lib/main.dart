import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:job_board/core/app/routes.dart';
import 'package:job_board/features/bloc/favorites/favorites_bloc.dart';

import 'package:job_board/features/presentation/jobs/entities/job.dart';
import 'package:job_board/features/presentation/jobs/entities/placeholder.dart';


import 'core/app/theme.dart';
import 'features/bloc/jobs/jobs_bloc.dart';
import 'service_locator.dart';
import 'utils/hive_boxes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<JobsBloc>(create: (context) => sl<JobsBloc>(),),
        BlocProvider<FavoritesBloc>(create: (context) => sl<FavoritesBloc>(),),

      ],
      child: AdaptiveTheme(
        light: lightTheme,
        dark: darkTheme,
        initial: AdaptiveThemeMode.system,

        builder: (light, dark) => 
         MaterialApp.router(
          theme: light,
          darkTheme: dark,
          routerConfig: router,
          title: 'Job Board',
        ),
      ),
    );
  }
}
