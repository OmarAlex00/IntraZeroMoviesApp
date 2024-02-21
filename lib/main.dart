import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intrazeromovies/core/utils/app_router.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/core/utils/service_locator.dart';
import 'package:intrazeromovies/features/home/data/repos/movie_repo_impl.dart';
import 'package:intrazeromovies/features/home/presentation/controllers/get_movies_cubit/get_movies_cubit.dart';

void main() {
  setupServiceLocator();

  runApp(const IntraZeroMovies());
}

class IntraZeroMovies extends StatelessWidget {
  const IntraZeroMovies({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetMoviesCubit((getIt.get<MovieRepoImpl>()))..getMovies(),
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
