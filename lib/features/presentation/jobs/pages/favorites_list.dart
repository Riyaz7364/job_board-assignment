import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:job_board/core/models/jobs/job_model.dart';
import 'package:job_board/features/bloc/favorites/favorites_bloc.dart';
import 'package:job_board/features/domain/repository/posts/posts_repository.dart';
import 'package:job_board/features/presentation/jobs/widgets/listview_item.dart';
import 'package:job_board/service_locator.dart';
import 'package:logger/logger.dart';

import '../../../bloc/jobs/jobs_bloc.dart';

class FavoritesList extends StatefulWidget {
  const FavoritesList({super.key});

  @override
  State<FavoritesList> createState() => _FavoritesListState();
}

class _FavoritesListState extends State<FavoritesList> {
  @override
  void initState() {
    super.initState();
    // Delay the call until the widget is in the tree
    context.read<FavoritesBloc>().add(GetAllFavorites());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites List'),
      ),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (jobs) => ValueListenableBuilder(
              valueListenable:
                  GetIt.I.get<IPostRepository>().favoritesListenable,
              builder: (context, value, child) => ListView.builder(
                itemCount: jobs.length,
                itemBuilder: (context, index) {
                  final isFav = GetIt.I
                      .get<IPostRepository>()
                      .isFavorite(jobs[index].jobId!);
                  return ListviewItem(job: jobs[index], isFav: isFav);
                },
              ),
            ),
            empty: (message) => Center(child: Text(message)),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
