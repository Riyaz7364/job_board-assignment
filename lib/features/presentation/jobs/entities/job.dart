
import 'package:hive_ce/hive.dart';

import 'placeholder.dart';

class Job extends HiveObject{
  
 String? jobId;
 String? title;
 String? logoPath;
 String? currency;
 String? companyName;
 int? createdDate;
 bool? isSaved;
 String? tagsAndSkills;
 String? experienceText;
 String? jobDescription;
  String? footerPlaceholderLabel;
 List<Map<String, dynamic>>? placeholders;

  Job({
     this.jobId,
     this.title,
     this.logoPath,
     this.currency,
     this.companyName,
     this.createdDate,
     this.isSaved,
     this.tagsAndSkills,
     this.experienceText,
     this.jobDescription,
     this.footerPlaceholderLabel,
     this.placeholders,
  });
}
