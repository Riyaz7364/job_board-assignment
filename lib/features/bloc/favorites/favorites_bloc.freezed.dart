// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoritesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoritesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoritesState()';
  }
}

/// @nodoc
class $FavoritesStateCopyWith<$Res> {
  $FavoritesStateCopyWith(FavoritesState _, $Res Function(FavoritesState) __);
}

/// @nodoc

class _Initial extends FavoritesState {
  const _Initial() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoritesState.initial()';
  }
}

/// @nodoc

class _LoadInProgress extends FavoritesState {
  const _LoadInProgress() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoritesState.loadInProgress()';
  }
}

/// @nodoc

class _Updated extends FavoritesState {
  const _Updated(this.job) : super._();

  final Job job;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatedCopyWith<_Updated> get copyWith =>
      __$UpdatedCopyWithImpl<_Updated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Updated &&
            (identical(other.job, job) || other.job == job));
  }

  @override
  int get hashCode => Object.hash(runtimeType, job);

  @override
  String toString() {
    return 'FavoritesState.updated(job: $job)';
  }
}

/// @nodoc
abstract mixin class _$UpdatedCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) _then) =
      __$UpdatedCopyWithImpl;
  @useResult
  $Res call({Job job});
}

/// @nodoc
class __$UpdatedCopyWithImpl<$Res> implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(this._self, this._then);

  final _Updated _self;
  final $Res Function(_Updated) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? job = null,
  }) {
    return _then(_Updated(
      null == job
          ? _self.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
    ));
  }
}

/// @nodoc

class _Load extends FavoritesState {
  const _Load(final List<Job> jobs)
      : _jobs = jobs,
        super._();

  final List<Job> _jobs;
  List<Job> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadCopyWith<_Load> get copyWith =>
      __$LoadCopyWithImpl<_Load>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Load &&
            const DeepCollectionEquality().equals(other._jobs, _jobs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_jobs));

  @override
  String toString() {
    return 'FavoritesState.load(jobs: $jobs)';
  }
}

/// @nodoc
abstract mixin class _$LoadCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) _then) =
      __$LoadCopyWithImpl;
  @useResult
  $Res call({List<Job> jobs});
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(this._self, this._then);

  final _Load _self;
  final $Res Function(_Load) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jobs = null,
  }) {
    return _then(_Load(
      null == jobs
          ? _self._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Job>,
    ));
  }
}

/// @nodoc

class _Empty extends FavoritesState {
  const _Empty(this.message) : super._();

  final String message;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Empty &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'FavoritesState.empty(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$EmptyCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) _then) =
      __$EmptyCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(this._self, this._then);

  final _Empty _self;
  final $Res Function(_Empty) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Empty(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Error extends FavoritesState {
  const _Error(this.message) : super._();

  final String message;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'FavoritesState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) =
      __$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Error(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$FavoritesEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoritesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoritesEvent()';
  }
}

/// @nodoc
class $FavoritesEventCopyWith<$Res> {
  $FavoritesEventCopyWith(FavoritesEvent _, $Res Function(FavoritesEvent) __);
}

/// @nodoc

class AddToFavorites implements FavoritesEvent {
  const AddToFavorites(this.job);

  final Job job;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddToFavoritesCopyWith<AddToFavorites> get copyWith =>
      _$AddToFavoritesCopyWithImpl<AddToFavorites>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddToFavorites &&
            (identical(other.job, job) || other.job == job));
  }

  @override
  int get hashCode => Object.hash(runtimeType, job);

  @override
  String toString() {
    return 'FavoritesEvent.addToFavorites(job: $job)';
  }
}

/// @nodoc
abstract mixin class $AddToFavoritesCopyWith<$Res>
    implements $FavoritesEventCopyWith<$Res> {
  factory $AddToFavoritesCopyWith(
          AddToFavorites value, $Res Function(AddToFavorites) _then) =
      _$AddToFavoritesCopyWithImpl;
  @useResult
  $Res call({Job job});
}

/// @nodoc
class _$AddToFavoritesCopyWithImpl<$Res>
    implements $AddToFavoritesCopyWith<$Res> {
  _$AddToFavoritesCopyWithImpl(this._self, this._then);

  final AddToFavorites _self;
  final $Res Function(AddToFavorites) _then;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? job = null,
  }) {
    return _then(AddToFavorites(
      null == job
          ? _self.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
    ));
  }
}

/// @nodoc

class RemoveFromFavorites implements FavoritesEvent {
  const RemoveFromFavorites(this.job);

  final Job job;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoveFromFavoritesCopyWith<RemoveFromFavorites> get copyWith =>
      _$RemoveFromFavoritesCopyWithImpl<RemoveFromFavorites>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveFromFavorites &&
            (identical(other.job, job) || other.job == job));
  }

  @override
  int get hashCode => Object.hash(runtimeType, job);

  @override
  String toString() {
    return 'FavoritesEvent.removeFromFavorites(job: $job)';
  }
}

/// @nodoc
abstract mixin class $RemoveFromFavoritesCopyWith<$Res>
    implements $FavoritesEventCopyWith<$Res> {
  factory $RemoveFromFavoritesCopyWith(
          RemoveFromFavorites value, $Res Function(RemoveFromFavorites) _then) =
      _$RemoveFromFavoritesCopyWithImpl;
  @useResult
  $Res call({Job job});
}

/// @nodoc
class _$RemoveFromFavoritesCopyWithImpl<$Res>
    implements $RemoveFromFavoritesCopyWith<$Res> {
  _$RemoveFromFavoritesCopyWithImpl(this._self, this._then);

  final RemoveFromFavorites _self;
  final $Res Function(RemoveFromFavorites) _then;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? job = null,
  }) {
    return _then(RemoveFromFavorites(
      null == job
          ? _self.job
          : job // ignore: cast_nullable_to_non_nullable
              as Job,
    ));
  }
}

/// @nodoc

class GetAllFavorites implements FavoritesEvent {
  const GetAllFavorites();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoritesEvent.getAllFavorites()';
  }
}

/// @nodoc

class ClearAllFavorites implements FavoritesEvent {
  const ClearAllFavorites();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearAllFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoritesEvent.clearAllFavorites()';
  }
}

// dart format on
