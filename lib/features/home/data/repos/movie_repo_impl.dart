import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:intrazeromovies/core/errors/failure.dart';
import 'package:intrazeromovies/core/utils/api_service.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/data/repos/movie_repo.dart';

class MovieRepoImpl implements MovieRepo {
  final APIService apiService;

  MovieRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Movie>>> getMoviesList() async {
    try {
      List<Movie> movies = [];
      var data = await apiService.getMovies();
      for (var element in data['results']) {
        movies.add(Movie.fromJson(element));
      }
      return right(movies);
    } catch (e) {
      if (e is DioException) return left(ServerFailure.fromDioException(e));
      return left(ServerFailure(e.toString()));
    }
  }
}
