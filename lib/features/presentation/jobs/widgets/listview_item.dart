import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:job_board/features/presentation/jobs/entities/job.dart';
import '../../../bloc/favorites/favorites_bloc.dart';
import '../../../domain/repository/posts/posts_repository.dart';

class ListviewItem extends StatelessWidget {
  const ListviewItem({super.key, required this.job, required this.isFav});

  final bool isFav;
  final Job job;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          isThreeLine: true,
          leading: Image.network(job.logoPath!),
          title: Text(job.title ?? ""),
          subtitle: Text(job.companyName ?? ""),
          trailing: FittedBox(
            child: Column(
              children: [
                SizedBox(height: 5,),
                Text(job.footerPlaceholderLabel!),
                IconButton(
                  onPressed: () {
                    GetIt.I.get<IPostRepository>().toggleFavorites(job);
                    
                  },
                  icon: Icon(
                    
                    Icons.favorite,
                    color: isFav ? Colors.red : AdaptiveTheme.of(context).theme.iconButtonTheme.style?.iconColor?.resolve({}),
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            GetIt.I.get<IPostRepository>().toggleCardExpand(job.jobId!);
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              placeHolder(Icons.work_outline_outlined, job.placeholders![0]['label']!),
              placeHolder(Icons.currency_rupee, job.placeholders![1]['label']!),
              placeHolder(Icons.location_on_outlined, job.placeholders![2]['label']!.split(' ').first),
            ],
          ),
        ),
        
        ValueListenableBuilder<bool>(
          valueListenable:
              GetIt.I.get<IPostRepository>().getCardExpand(job.jobId!),
          builder: (context, isExpanded, child) {
            return AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              alignment: Alignment.topCenter,
              child: isExpanded
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Skill Set:'),
                           SizedBox(height: 5,),
                           Text(job.tagsAndSkills!.replaceAll(',', ', ').toUpperCase()),
                          SizedBox(height: 10,),
                          Text('Description:'),
                          Text(
                            job.jobDescription ?? "",
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
            );
          },
        ),
        const Divider(),
      ],
    );
  }

  Widget placeHolder(IconData icon, String lable) {
    return Row(
      children: [
        Icon(
          icon,
          size: 17,
        ),
        SizedBox(
          width: 8,
        ),
        Text(lable)
      ],
    );
  }
}
