import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';

part 'get_fav_movies_state.dart';

class GetFavMoviesCubit extends Cubit<GetFavMoviesState> {
  GetFavMoviesCubit() : super(GetFavMoviesInitial());
  List<Movie>? movies;
  showAllFavMovies() {
    var movieBox = Hive.box<Movie>(ConstantVars.kFavMoviesBox);
    movies = movieBox.values.toList();
    emit(GetFavMoviesSuccess());
  }
}
