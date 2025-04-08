import 'package:freezed_annotation/freezed_annotation.dart';

part 'placeholder_model.freezed.dart';
part 'placeholder_model.g.dart';

@freezed
 abstract class PlaceholderModel with _$PlaceholderModel {
  const factory PlaceholderModel({
    required String type,
    required String label,
  }) = _PlaceholderModel;

  factory PlaceholderModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceholderModelFromJson(json);
}
