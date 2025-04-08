import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:job_board/core/models/jobs/job_model.dart';
import 'package:job_board/features/domain/repository/posts/posts_repository.dart';
import 'package:job_board/service_locator.dart';
import 'package:logger/logger.dart';

import '../../presentation/jobs/entities/job.dart';

part 'favorites_state.dart';
part 'favorites_event.dart';
part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  IPostRepository favoritesRepository;
  FavoritesBloc(this.favoritesRepository)
      : super(const FavoritesState.initial()) {

    on<GetAllFavorites>(_getAllFavorites);
  }

  void _getAllFavorites(
      FavoritesEvent event, Emitter<FavoritesState> emit) async {
    emit(const FavoritesState.loadInProgress());
    try {
      Logger().i('Fetch Favorites');
      final data = favoritesRepository.getFavorites();
      if (data.isEmpty) {
        emit(const FavoritesState.empty('No favorites yet'));
      } else if (data.isNotEmpty) {
        emit(FavoritesState.load(data));
      }
    } catch (e) {
      emit(FavoritesState.error(e.toString()));
    }
  }
}
