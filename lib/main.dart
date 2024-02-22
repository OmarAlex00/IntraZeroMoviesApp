import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intrazeromovies/core/utils/api_service.dart';
import 'package:intrazeromovies/core/utils/app_router.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/data/repos/movie_repo_impl.dart';
import 'package:intrazeromovies/features/home/data/source/movie_local_source.dart';
import 'package:intrazeromovies/features/home/data/source/movie_remote_source.dart';
import 'package:intrazeromovies/features/home/presentation/controllers/get_movies_cubit/get_movies_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(MovieAdapter());
  await Hive.openBox<Movie>(ConstantVars.kMoviesBox);
  await Hive.openBox<Movie>(ConstantVars.kFavMoviesBox);

  runApp(const IntraZeroMovies());
}

class IntraZeroMovies extends StatelessWidget {
  const IntraZeroMovies({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetMoviesCubit(MovieRepoImpl(
              MovieRemoteDataSource(apiService: APIService(Dio())),
              MovieLocalDataSource()))
            ..getMovies(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: ConstantVars.kPrimaryColor,
            textTheme:
                GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme)),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
