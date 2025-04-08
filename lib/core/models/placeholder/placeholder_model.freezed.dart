// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'placeholder_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceholderModel {
  String get type;
  String get label;

  /// Create a copy of PlaceholderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceholderModelCopyWith<PlaceholderModel> get copyWith =>
      _$PlaceholderModelCopyWithImpl<PlaceholderModel>(
          this as PlaceholderModel, _$identity);

  /// Serializes this PlaceholderModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceholderModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, label);

  @override
  String toString() {
    return 'PlaceholderModel(type: $type, label: $label)';
  }
}

/// @nodoc
abstract mixin class $PlaceholderModelCopyWith<$Res> {
  factory $PlaceholderModelCopyWith(
          PlaceholderModel value, $Res Function(PlaceholderModel) _then) =
      _$PlaceholderModelCopyWithImpl;
  @useResult
  $Res call({String type, String label});
}

/// @nodoc
class _$PlaceholderModelCopyWithImpl<$Res>
    implements $PlaceholderModelCopyWith<$Res> {
  _$PlaceholderModelCopyWithImpl(this._self, this._then);

  final PlaceholderModel _self;
  final $Res Function(PlaceholderModel) _then;

  /// Create a copy of PlaceholderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? label = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PlaceholderModel implements PlaceholderModel {
  const _PlaceholderModel({required this.type, required this.label});
  factory _PlaceholderModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceholderModelFromJson(json);

  @override
  final String type;
  @override
  final String label;

  /// Create a copy of PlaceholderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceholderModelCopyWith<_PlaceholderModel> get copyWith =>
      __$PlaceholderModelCopyWithImpl<_PlaceholderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceholderModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceholderModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, label);

  @override
  String toString() {
    return 'PlaceholderModel(type: $type, label: $label)';
  }
}

/// @nodoc
abstract mixin class _$PlaceholderModelCopyWith<$Res>
    implements $PlaceholderModelCopyWith<$Res> {
  factory _$PlaceholderModelCopyWith(
          _PlaceholderModel value, $Res Function(_PlaceholderModel) _then) =
      __$PlaceholderModelCopyWithImpl;
  @override
  @useResult
  $Res call({String type, String label});
}

/// @nodoc
class __$PlaceholderModelCopyWithImpl<$Res>
    implements _$PlaceholderModelCopyWith<$Res> {
  __$PlaceholderModelCopyWithImpl(this._self, this._then);

  final _PlaceholderModel _self;
  final $Res Function(_PlaceholderModel) _then;

  /// Create a copy of PlaceholderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? label = null,
  }) {
    return _then(_PlaceholderModel(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
