import 'package:job_board/core/models/jobs/job_model.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

abstract class ApiSource {
  Future<List<JobModel>> getJobs();
}

class ApiSourceImpl implements ApiSource {
  final dio = Dio();
  
  @override
  Future<List<JobModel>> getJobs() async {
    try {
      final response = await dio.get('https://www.autolikerlive.com/jobs.json');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['jobDetails'];
        final List<JobModel> jobs =
            data.map((e) => JobModel.fromJson(e)).toList();
        return jobs;
      } else {
        throw Exception('Failed to laod jobs');
      }
    } catch (e) {
      print("API error: $e");
      rethrow;
    }
  }
}
