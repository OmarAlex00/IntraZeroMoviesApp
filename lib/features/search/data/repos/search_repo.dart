import 'package:dartz/dartz.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';

import '../../../../core/errors/failure.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<Movie>>> fetchResultsMovies(
      {required String title});
}
