import 'package:job_board/core/models/jobs/job_model.dart';
import 'package:job_board/core/network/api_source.dart';
import 'package:job_board/features/presentation/jobs/entities/job.dart';
import 'package:logger/logger.dart';

abstract class IJobRepository {
  Future<List<Job>> fetchJobs();
}

class JobRepositoryImpl implements IJobRepository {
  final ApiSource apiSource;
  JobRepositoryImpl(this.apiSource);
  
  @override
  Future<List<Job>> fetchJobs() async {
    final models = await apiSource.getJobs();
    Logger().f(models.length);
    return models.map((model) => model.toEntity()).toList();
  }
  

}