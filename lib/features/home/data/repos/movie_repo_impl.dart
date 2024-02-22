import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:intrazeromovies/core/errors/failure.dart';
import 'package:intrazeromovies/core/utils/api_service.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/data/repos/movie_repo.dart';
import 'package:intrazeromovies/features/home/data/source/movie_local_source.dart';
import 'package:intrazeromovies/features/home/data/source/movie_remote_source.dart';

class MovieRepoImpl implements MovieRepo {
  final MovieRemoteDataSource movieRemoteDataSource;
  final MovieLocalDataSource movieLocalDataSource;
  MovieRepoImpl(this.movieRemoteDataSource, this.movieLocalDataSource);
  @override
  Future<Either<Failure, List<Movie>>> getMoviesList() async {
    try {
      List<Movie> movies;
      movies = movieLocalDataSource.fetchMovies();
      if (movies.isNotEmpty) {
        return right(movies);
      }
      movies = await movieRemoteDataSource.fetchMovies();
      return right(movies);
    } catch (e) {
      if (e is DioException) return left(ServerFailure.fromDioException(e));
      return left(ServerFailure(e.toString()));
    }
  }
}
