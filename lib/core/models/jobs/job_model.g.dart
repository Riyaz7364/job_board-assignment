// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobModel _$JobModelFromJson(Map<String, dynamic> json) => _JobModel(
      jobId: json['jobId'] as String? ?? 'jobId_un',
      title: json['title'] as String? ?? 'title_un',
      logoPath: json['logoPath'] as String? ?? 'logoPath_un',
      currency: json['currency'] as String? ?? 'currency_un',
      companyName: json['companyName'] as String? ?? 'companyName_un',
      createdDate: (json['createdDate'] as num?)?.toInt() ?? 00000,
      isSaved: json['isSaved'] as bool? ?? false,
      tagsAndSkills: json['tagsAndSkills'] as String? ?? 'tagsAndSkills_un',
      experienceText: json['experienceText'] as String? ?? 'experienceText_un',
      jobDescription: json['jobDescription'] as String? ?? 'jobDescription_un',
      footerPlaceholderLabel: json['footerPlaceholderLabel'] as String? ??
          'footerPlaceholderLabel_un',
      placeholders: (json['placeholders'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$JobModelToJson(_JobModel instance) => <String, dynamic>{
      'jobId': instance.jobId,
      'title': instance.title,
      'logoPath': instance.logoPath,
      'currency': instance.currency,
      'companyName': instance.companyName,
      'createdDate': instance.createdDate,
      'isSaved': instance.isSaved,
      'tagsAndSkills': instance.tagsAndSkills,
      'experienceText': instance.experienceText,
      'jobDescription': instance.jobDescription,
      'footerPlaceholderLabel': instance.footerPlaceholderLabel,
      'placeholders': instance.placeholders,
    };
