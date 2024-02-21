import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intrazeromovies/core/utils/service_locator.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/presentation/views/screens/home_screen.dart';
import 'package:intrazeromovies/features/home/presentation/views/screens/movies_details_screen.dart';
import 'package:intrazeromovies/features/search/data/repos/search_repo_imp.dart';
import 'package:intrazeromovies/features/search/presentation/controllers/cubit/search_cubit_cubit.dart';
import 'package:intrazeromovies/features/search/presentation/views/screens/search_screen.dart';

abstract class AppRouter {
  static const String kHomeScreenRouter = '/homeScreenRoute';
  static const String kMovieDetailsScreenRouter = '/movieDetailsScreenRoute';
  static const String kSearchScreenRouter = '/SearchScreenRoute';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: kMovieDetailsScreenRouter,
      builder: (context, state) =>
          MoviesDetailsScreen(movie: state.extra as Movie),
    ),
    GoRoute(
      path: kSearchScreenRouter,
      builder: (context, state) => BlocProvider(
        create: (context) => SearchCubitCubit(getIt.get<SearchRepoImp>()),
        child: const SearchView(),
      ),
    ),
  ]);
}
