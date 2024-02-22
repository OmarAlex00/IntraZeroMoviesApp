import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';

part 'add_fav_movies_state.dart';

class AddFavMoviesCubit extends Cubit<AddFavMoviesState> {
  AddFavMoviesCubit() : super(AddFavMoviesInitial());
  addMovie(Movie movie) async {
    emit(AddFavMoviesLoading());

    try {
      var movieBox = Hive.box<Movie>(ConstantVars.kFavMoviesBox);
      await movieBox.add(movie);
      emit(AddFavMoviesSuccess());
    } catch (e) {
      emit(AddFavMoviesFailure(e.toString()));
    }
  }

  deleteMovie(Movie movie) async {
    emit(AddFavMoviesLoading());

    try {
      var movieBox = Hive.box<Movie>(ConstantVars.kFavMoviesBox);
      var movieToDeleteIndex = movieBox.values.toList().indexOf(movie);
      movieBox.deleteAt(movieToDeleteIndex);
    } catch (e) {
      emit(AddFavMoviesFailure(e.toString()));
    }
  }
}
