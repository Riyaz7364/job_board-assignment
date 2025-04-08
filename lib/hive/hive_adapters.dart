import 'package:hive_ce/hive.dart';
import 'package:job_board/features/presentation/jobs/entities/job.dart';


part 'hive_adapters.g.dart';

@GenerateAdapters([AdapterSpec<Job>()])
// Annotations must be on some element
// ignore: unused_element
void _() {}