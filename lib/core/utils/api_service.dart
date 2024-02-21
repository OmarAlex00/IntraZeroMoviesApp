import 'package:dio/dio.dart';
import 'package:intrazeromovies/core/utils/constants.dart';

class APIService {
  final Dio _dio;
  final _discoverMovies = 'http://api.themoviedb.org/3/discover/movie';
  final _searchMovies = 'https://api.themoviedb.org/3/search/movie';
  APIService(this._dio);

  Future<Map<String, dynamic>> getMovies() async {
    var response =
        await _dio.get('$_discoverMovies?api_key=${ConstantVars.apiKey}');

    return response.data;
  }

  Future<Map<String, dynamic>> getMoviesResults(String keyword) async {
    var response = await _dio
        .get('$_searchMovies?api_key=${ConstantVars.apiKey}&query=$keyword');
    return response.data;
  }
}
