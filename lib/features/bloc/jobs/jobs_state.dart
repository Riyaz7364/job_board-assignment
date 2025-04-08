part of 'jobs_bloc.dart';

@freezed
class JobsState with _$JobsState {
const JobsState._();

  const factory JobsState.initial() = _Initial;
  const factory JobsState.loading() = _Loading;
  const factory JobsState.success(List<Job> jobs) = _Success;
  const factory JobsState.error(String message) = _Error;



  // Custom when method
  R when<R>({
    required R Function() initial,
    required R Function() loading,
    required R Function(List<Job>) success,
    required R Function(String) error,
  }) {
    if (this is _Initial) return initial();
    if (this is _Loading) return loading();
    if (this is _Success) return success((this as _Success).jobs);
    if (this is _Error) return error((this as _Error).message);
    throw Exception('Unknown state');
  }
}