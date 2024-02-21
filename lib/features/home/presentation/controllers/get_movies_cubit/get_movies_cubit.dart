import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';

import '../../../data/repos/movie_repo.dart';

part 'get_movies_state.dart';

class GetMoviesCubit extends Cubit<GetMoviesState> {
  GetMoviesCubit(this.movieRepo) : super(GetMoviesInitial());
  final MovieRepo movieRepo;
  Future<void> getMovies() async {
    emit(GetMoviesLoading());
    var results = await movieRepo.getMoviesList();
    results.fold((failure) {
      emit(GetMoviesFailure(failure.errMessage));
    }, (success) {
      emit(GetMoviesSuccess(success));
    });
  }
}
