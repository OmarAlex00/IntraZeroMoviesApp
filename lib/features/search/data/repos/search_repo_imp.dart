import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:intrazeromovies/core/errors/failure.dart';
import 'package:intrazeromovies/core/utils/api_service.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/search/data/repos/search_repo.dart';

import '../../../../core/utils/constants.dart';

class SearchRepoImp implements SearchRepo {
  final APIService apiService;

  SearchRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<Movie>>> fetchResultsMovies(
      {required String title}) async {
    try {
      List<Movie> books = [];
      Map<String, dynamic> data = await apiService.getMoviesResults(title);
      for (var element in data['results']) {
        books.add(Movie.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) return left(ServerFailure.fromDioException(e));
      return left(ServerFailure(e.toString()));
    }
  }
}
