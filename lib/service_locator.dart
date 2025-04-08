import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:job_board/core/network/api_source.dart';
import 'package:job_board/features/bloc/favorites/favorites_bloc.dart';
import 'package:job_board/features/domain/repository/posts/posts_repository.dart';

import 'package:job_board/features/domain/repository/jobs/job_repository.dart';
import 'package:job_board/features/presentation/jobs/entities/job.dart';
import 'package:job_board/hive/hive_registrar.g.dart';
import 'package:path_provider/path_provider.dart';

import 'features/bloc/jobs/jobs_bloc.dart';
import 'features/presentation/jobs/entities/placeholder.dart';
import 'utils/hive_boxes.dart';

final sl = GetIt.instance;


Future<void> _setupHive() async {
  final dir = await getApplicationDocumentsDirectory();

  Hive
    ..init(dir.path)
    ..registerAdapters();

    var box = await Hive.openBox<Job>(HiveBoxes.favoriteJobs);
  sl.registerSingleton<Box<Job>>(box);
}

Future<void> setupLocator() async {
  _setupHive();
  // Resgister Dio API
  sl.registerLazySingleton<ApiSource>(() => ApiSourceImpl());

  // Register the repository as a singleton
  sl.registerLazySingleton<IJobRepository>(() => JobRepositoryImpl(sl()));

  // Register the Bloc
  sl.registerFactory(() => JobsBloc(sl()));

  // Resgister Favorites Repository

  sl.registerLazySingleton<IPostRepository>(() => PostsRepositoryImpl(sl<Box<Job>>()));
  sl.registerFactory(() => FavoritesBloc(sl()));
}