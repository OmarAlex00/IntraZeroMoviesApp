import 'package:go_router/go_router.dart';
import 'package:intrazeromovies/features/home/presentation/views/screens/home_screen.dart';

abstract class AppRouter {
  static const String kHomeScreenRouter = '/homeScreenRoute';
  static const String kBooksDetailsScreenRouter = '/bookDetailsScreenRoute';
  static const String kSearchScreenRouter = '/SearchScreenRoute';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ]);
}
