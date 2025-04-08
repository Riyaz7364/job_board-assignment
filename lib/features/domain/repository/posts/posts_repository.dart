import 'package:flutter/foundation.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:job_board/core/models/jobs/job_model.dart';
import 'package:job_board/features/presentation/jobs/entities/job.dart';
import 'package:logger/logger.dart';

abstract class IPostRepository {
  void toggleFavorites(Job job);
  List<Job> getFavorites();
  bool isFavorite(String jobId);
  void removeFavorite(String jobId);
  ValueNotifier<bool> getCardExpand(String jobId);
  void toggleCardExpand(String jobId);
   ValueListenable<Box<Job>> get favoritesListenable;
   
}

class PostsRepositoryImpl implements IPostRepository {
  final Box<Job> box;

   final Map<String, ValueNotifier<bool>> _expandStates = {};

  PostsRepositoryImpl(this.box);

  @override
  void toggleFavorites(Job job) {
    if(isFavorite(job.jobId!)){
      Logger().i('Favorites Removed ${job.jobId}');
        removeFavorite(job.jobId!);
    }else{
      Logger().i('Favorites Added ${job.toModel().toJson()}');
      box.put(job.jobId, job);
      
    }
  }

  @override
  List<Job> getFavorites() {
    return box.values.toList();
  }
    @override
  bool isFavorite(String jobId) {
    return box.containsKey(jobId);
  }
  
  @override
  void removeFavorite(String jobId) {
    box.delete(jobId);
  }
  
  @override
  ValueListenable<Box<Job>> get favoritesListenable => box.listenable();
  
  @override
  ValueNotifier<bool> getCardExpand(String jobId) {

    return _expandStates.putIfAbsent(jobId, () => ValueNotifier(false));
  }

  @override
  void toggleCardExpand(String jobId) {
    final notifier = getCardExpand(jobId);
    notifier.value = !notifier.value;
  }

}
