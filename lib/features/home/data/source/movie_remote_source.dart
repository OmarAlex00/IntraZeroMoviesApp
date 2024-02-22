import 'package:hive/hive.dart';
import 'package:intrazeromovies/core/utils/api_service.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';

class MovieRemoteDataSource {
  final APIService apiService;

  MovieRemoteDataSource({required this.apiService});

  Future<List<Movie>> fetchMovies() async {
    var data = await apiService.getMovies();
    List<Movie> movies = [];
    for (var element in data['results']) {
      movies.add(Movie.fromJson(element));
    }
    var box = Hive.box<Movie>(ConstantVars.kMoviesBox);
    box.addAll(movies);
    return movies;
  }
}
