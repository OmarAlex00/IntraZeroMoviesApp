import 'package:hive/hive.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';

class MovieLocalDataSource {
  List<Movie> fetchMovies() {
    var box = Hive.box<Movie>(ConstantVars.kMoviesBox);
    return box.values.toList();
  }
}
