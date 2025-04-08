// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobModel {
  String get jobId;
  String get title;
  String get logoPath;
  String get currency;
  String get companyName;
  int get createdDate;
  bool get isSaved;
  String get tagsAndSkills;
  String get experienceText;
  String get jobDescription;
  String get footerPlaceholderLabel;
  List<Map<String, dynamic>> get placeholders;

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JobModelCopyWith<JobModel> get copyWith =>
      _$JobModelCopyWithImpl<JobModel>(this as JobModel, _$identity);

  /// Serializes this JobModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JobModel &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.tagsAndSkills, tagsAndSkills) ||
                other.tagsAndSkills == tagsAndSkills) &&
            (identical(other.experienceText, experienceText) ||
                other.experienceText == experienceText) &&
            (identical(other.jobDescription, jobDescription) ||
                other.jobDescription == jobDescription) &&
            (identical(other.footerPlaceholderLabel, footerPlaceholderLabel) ||
                other.footerPlaceholderLabel == footerPlaceholderLabel) &&
            const DeepCollectionEquality()
                .equals(other.placeholders, placeholders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      jobId,
      title,
      logoPath,
      currency,
      companyName,
      createdDate,
      isSaved,
      tagsAndSkills,
      experienceText,
      jobDescription,
      footerPlaceholderLabel,
      const DeepCollectionEquality().hash(placeholders));

  @override
  String toString() {
    return 'JobModel(jobId: $jobId, title: $title, logoPath: $logoPath, currency: $currency, companyName: $companyName, createdDate: $createdDate, isSaved: $isSaved, tagsAndSkills: $tagsAndSkills, experienceText: $experienceText, jobDescription: $jobDescription, footerPlaceholderLabel: $footerPlaceholderLabel, placeholders: $placeholders)';
  }
}

/// @nodoc
abstract mixin class $JobModelCopyWith<$Res> {
  factory $JobModelCopyWith(JobModel value, $Res Function(JobModel) _then) =
      _$JobModelCopyWithImpl;
  @useResult
  $Res call(
      {String jobId,
      String title,
      String logoPath,
      String currency,
      String companyName,
      int createdDate,
      bool isSaved,
      String tagsAndSkills,
      String experienceText,
      String jobDescription,
      String footerPlaceholderLabel,
      List<Map<String, dynamic>> placeholders});
}

/// @nodoc
class _$JobModelCopyWithImpl<$Res> implements $JobModelCopyWith<$Res> {
  _$JobModelCopyWithImpl(this._self, this._then);

  final JobModel _self;
  final $Res Function(JobModel) _then;

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobId = null,
    Object? title = null,
    Object? logoPath = null,
    Object? currency = null,
    Object? companyName = null,
    Object? createdDate = null,
    Object? isSaved = null,
    Object? tagsAndSkills = null,
    Object? experienceText = null,
    Object? jobDescription = null,
    Object? footerPlaceholderLabel = null,
    Object? placeholders = null,
  }) {
    return _then(_self.copyWith(
      jobId: null == jobId
          ? _self.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: null == logoPath
          ? _self.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as int,
      isSaved: null == isSaved
          ? _self.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      tagsAndSkills: null == tagsAndSkills
          ? _self.tagsAndSkills
          : tagsAndSkills // ignore: cast_nullable_to_non_nullable
              as String,
      experienceText: null == experienceText
          ? _self.experienceText
          : experienceText // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription: null == jobDescription
          ? _self.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      footerPlaceholderLabel: null == footerPlaceholderLabel
          ? _self.footerPlaceholderLabel
          : footerPlaceholderLabel // ignore: cast_nullable_to_non_nullable
              as String,
      placeholders: null == placeholders
          ? _self.placeholders
          : placeholders // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _JobModel implements JobModel {
  const _JobModel(
      {this.jobId = 'jobId_un',
      this.title = 'title_un',
      this.logoPath = 'logoPath_un',
      this.currency = 'currency_un',
      this.companyName = 'companyName_un',
      this.createdDate = 00000,
      this.isSaved = false,
      this.tagsAndSkills = 'tagsAndSkills_un',
      this.experienceText = 'experienceText_un',
      this.jobDescription = 'jobDescription_un',
      this.footerPlaceholderLabel = 'footerPlaceholderLabel_un',
      final List<Map<String, dynamic>> placeholders = const []})
      : _placeholders = placeholders;
  factory _JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);

  @override
  @JsonKey()
  final String jobId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String logoPath;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final String companyName;
  @override
  @JsonKey()
  final int createdDate;
  @override
  @JsonKey()
  final bool isSaved;
  @override
  @JsonKey()
  final String tagsAndSkills;
  @override
  @JsonKey()
  final String experienceText;
  @override
  @JsonKey()
  final String jobDescription;
  @override
  @JsonKey()
  final String footerPlaceholderLabel;
  final List<Map<String, dynamic>> _placeholders;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get placeholders {
    if (_placeholders is EqualUnmodifiableListView) return _placeholders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_placeholders);
  }

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JobModelCopyWith<_JobModel> get copyWith =>
      __$JobModelCopyWithImpl<_JobModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JobModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JobModel &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.tagsAndSkills, tagsAndSkills) ||
                other.tagsAndSkills == tagsAndSkills) &&
            (identical(other.experienceText, experienceText) ||
                other.experienceText == experienceText) &&
            (identical(other.jobDescription, jobDescription) ||
                other.jobDescription == jobDescription) &&
            (identical(other.footerPlaceholderLabel, footerPlaceholderLabel) ||
                other.footerPlaceholderLabel == footerPlaceholderLabel) &&
            const DeepCollectionEquality()
                .equals(other._placeholders, _placeholders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      jobId,
      title,
      logoPath,
      currency,
      companyName,
      createdDate,
      isSaved,
      tagsAndSkills,
      experienceText,
      jobDescription,
      footerPlaceholderLabel,
      const DeepCollectionEquality().hash(_placeholders));

  @override
  String toString() {
    return 'JobModel(jobId: $jobId, title: $title, logoPath: $logoPath, currency: $currency, companyName: $companyName, createdDate: $createdDate, isSaved: $isSaved, tagsAndSkills: $tagsAndSkills, experienceText: $experienceText, jobDescription: $jobDescription, footerPlaceholderLabel: $footerPlaceholderLabel, placeholders: $placeholders)';
  }
}

/// @nodoc
abstract mixin class _$JobModelCopyWith<$Res>
    implements $JobModelCopyWith<$Res> {
  factory _$JobModelCopyWith(_JobModel value, $Res Function(_JobModel) _then) =
      __$JobModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String jobId,
      String title,
      String logoPath,
      String currency,
      String companyName,
      int createdDate,
      bool isSaved,
      String tagsAndSkills,
      String experienceText,
      String jobDescription,
      String footerPlaceholderLabel,
      List<Map<String, dynamic>> placeholders});
}

/// @nodoc
class __$JobModelCopyWithImpl<$Res> implements _$JobModelCopyWith<$Res> {
  __$JobModelCopyWithImpl(this._self, this._then);

  final _JobModel _self;
  final $Res Function(_JobModel) _then;

  /// Create a copy of JobModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jobId = null,
    Object? title = null,
    Object? logoPath = null,
    Object? currency = null,
    Object? companyName = null,
    Object? createdDate = null,
    Object? isSaved = null,
    Object? tagsAndSkills = null,
    Object? experienceText = null,
    Object? jobDescription = null,
    Object? footerPlaceholderLabel = null,
    Object? placeholders = null,
  }) {
    return _then(_JobModel(
      jobId: null == jobId
          ? _self.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: null == logoPath
          ? _self.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _self.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as int,
      isSaved: null == isSaved
          ? _self.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      tagsAndSkills: null == tagsAndSkills
          ? _self.tagsAndSkills
          : tagsAndSkills // ignore: cast_nullable_to_non_nullable
              as String,
      experienceText: null == experienceText
          ? _self.experienceText
          : experienceText // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription: null == jobDescription
          ? _self.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      footerPlaceholderLabel: null == footerPlaceholderLabel
          ? _self.footerPlaceholderLabel
          : footerPlaceholderLabel // ignore: cast_nullable_to_non_nullable
              as String,
      placeholders: null == placeholders
          ? _self._placeholders
          : placeholders // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

// dart format on
