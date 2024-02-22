import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intrazeromovies/core/utils/api_service.dart';
import 'package:intrazeromovies/features/favourite/presentation/controllers/add_fav_movies_cubit/add_fav_movies_cubit.dart';
import 'package:intrazeromovies/features/favourite/presentation/controllers/get_Fav_movies_cubit/get_fav_movies_cubit.dart';
import 'package:intrazeromovies/features/favourite/presentation/views/screens/fav_screen.dart';
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
  static const String kFavScreenRouter = '/FavScreenRoute';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: kFavScreenRouter,
      builder: (context, state) => BlocProvider(
          create: (context) => GetFavMoviesCubit()..showAllFavMovies(),
          child: const FavScreen()),
    ),
    GoRoute(
      path: kMovieDetailsScreenRouter,
      builder: (context, state) => BlocProvider(
          create: (context) => AddFavMoviesCubit(),
          child: MoviesDetailsScreen(movie: state.extra as Movie)),
    ),
    GoRoute(
      path: kSearchScreenRouter,
      builder: (context, state) => BlocProvider(
        create: (context) => SearchCubitCubit(SearchRepoImp(APIService(Dio()))),
        child: const SearchView(),
      ),
    ),
  ]);
}
