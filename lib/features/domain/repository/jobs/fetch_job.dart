import 'package:job_board/features/domain/repository/jobs/job_repository.dart';
import 'package:job_board/features/presentation/jobs/entities/job.dart';

class FetchJobs {
  IJobRepository repository;
  FetchJobs(this.repository);

  Future<List<Job>> call() => repository.fetchJobs();
}