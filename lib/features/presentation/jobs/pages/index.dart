import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:job_board/core/app/routes.dart';
import 'package:job_board/features/bloc/favorites/favorites_bloc.dart';
import 'package:job_board/features/domain/repository/posts/posts_repository.dart';
import 'package:job_board/features/presentation/jobs/widgets/adaptive_theme_toggle.dart';
import 'package:job_board/features/presentation/jobs/widgets/listview_item.dart';
import 'package:logger/logger.dart';

import '../../../bloc/jobs/jobs_bloc.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  void initState() {
    super.initState();
    // Delay the call until the widget is in the tree

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<JobsBloc>().add(FetchJobsEvent());
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Job Board'),
        actions: [
          AdaptiveThemeToggle(),
        ],
        ),
        body: BlocBuilder<JobsBloc, JobsState>(
          builder: (context, state) {
            return state.when(
              initial: () => Center(),
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (jobs) => ValueListenableBuilder(
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
              error: (message) => Center(child: Text(message)),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.push(favorites);
            }, child: Icon(Icons.favorite, color: Colors.red),),);
  }
}
