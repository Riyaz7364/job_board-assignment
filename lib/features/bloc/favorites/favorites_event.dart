part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.addToFavorites(Job job) = AddToFavorites;
  const factory FavoritesEvent.removeFromFavorites(Job job) =
      RemoveFromFavorites;
  const factory FavoritesEvent.getAllFavorites() = GetAllFavorites;
  const factory FavoritesEvent.clearAllFavorites() = ClearAllFavorites;
}