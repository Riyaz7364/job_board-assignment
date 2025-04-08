part of 'favorites_bloc.dart';

@freezed
class FavoritesState with _$FavoritesState {

  const FavoritesState._();

  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.loadInProgress() = _LoadInProgress;
  const factory FavoritesState.updated(Job job) = _Updated;
  const factory FavoritesState.load(List<Job> jobs) = _Load;
  const factory FavoritesState.empty(String message) = _Empty;
  const factory FavoritesState.error(String message) = _Error;


R when <R>({
  required R Function() initial,
  required R Function() loading,
  required R Function(List<Job>) loaded,
  required R Function(String) empty,
  required R Function(String) error,
}){
  if(this is _Initial) return initial();
  if(this is _LoadInProgress) return loading();
  if(this is _Load) return loaded((this as _Load).jobs);
  if(this is _Empty) return empty((this as _Empty).message);
  if(this is _Error) return error((this as _Error).message);
  return initial();
}
}