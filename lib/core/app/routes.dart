import 'package:go_router/go_router.dart';
import 'package:job_board/features/presentation/jobs/pages/favorites_list.dart';
import 'package:job_board/features/presentation/jobs/pages/index.dart';

const String index = '/';
const String favorites = '/favorites';

final router = GoRouter(routes: [
  GoRoute(
    path: index,
    builder: (context, state) => IndexScreen(),
  ),
  GoRoute(
    path: favorites,
    builder: (context, state) => FavoritesList(),
  )
]);
