import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:job_board/core/models/placeholder/placeholder_model.dart';
import 'package:job_board/features/presentation/jobs/entities/job.dart';
import 'package:job_board/features/presentation/jobs/entities/placeholder.dart';

part 'job_model.freezed.dart';
part 'job_model.g.dart';

@freezed
abstract class JobModel with _$JobModel {
  const factory JobModel({
   @Default('jobId_un') String jobId,
   @Default('title_un') String title,
   @Default('logoPath_un') String logoPath,
   @Default('currency_un') String currency,
   @Default('companyName_un') String companyName,
   @Default(00000) int createdDate,
   @Default(false) bool isSaved,
   @Default('tagsAndSkills_un') String tagsAndSkills,
   @Default('experienceText_un') String experienceText,
   @Default('jobDescription_un') String jobDescription,
   @Default('footerPlaceholderLabel_un') String footerPlaceholderLabel,
   @Default([]) List<Map<String, dynamic>> placeholders,
  }) = _JobModel;

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);
}

extension JobModelX on JobModel {
  Job toEntity() {
    return Job(
      jobId: jobId,
      title: title,
      logoPath: logoPath,
      currency: currency,
      companyName: companyName,
      createdDate: createdDate,
      isSaved: isSaved,
      tagsAndSkills: tagsAndSkills,
      experienceText: experienceText,
      jobDescription: jobDescription,
      footerPlaceholderLabel: footerPlaceholderLabel,
      placeholders: placeholders.map((e) => {'type': e['type'], 'label': e['label']}).toList(),
    );
  }
}

extension JobX on Job {
  JobModel toModel() => JobModel(
    jobId: jobId!,
    title: title!,
    logoPath: logoPath!,
    currency: currency!,
    companyName: companyName!,
    createdDate: createdDate!,
    isSaved: isSaved!,
    tagsAndSkills: tagsAndSkills!,
    experienceText: experienceText!,
    jobDescription: jobDescription!,
    footerPlaceholderLabel: footerPlaceholderLabel!,
    placeholders: placeholders!.map((e) => {'type': e['type'], 'label': e['label']}).toList(),
  );
}