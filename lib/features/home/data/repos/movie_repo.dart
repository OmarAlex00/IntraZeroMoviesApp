import 'package:dartz/dartz.dart';
import 'package:intrazeromovies/core/errors/failure.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';

abstract class MovieRepo {
  Future<Either<Failure, List<Movie>>> getMoviesList();
}
