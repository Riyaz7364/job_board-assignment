import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:job_board/features/domain/repository/jobs/job_repository.dart';

import '../../presentation/jobs/entities/job.dart';

part 'jobs_state.dart';
part 'jobs_event.dart';
part 'jobs_bloc.freezed.dart';

class JobsBloc extends Bloc<JobsEvent,JobsState>{
    IJobRepository jobRepository;


  JobsBloc(this.jobRepository) : super(const JobsState.initial()){
    on<FetchJobsEvent>(_fetchJobs);
  }

  void _fetchJobs(FetchJobsEvent event, Emitter<JobsState> emit) async{
      emit(JobsState.loading());
      try{
        final data = await jobRepository.fetchJobs();
        emit(JobsState.success(data));
      } catch(e){
        emit(JobsState.error(e.toString()));
      }
  }
}