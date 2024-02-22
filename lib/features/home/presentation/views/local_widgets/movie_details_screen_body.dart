import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/utils/genre_function.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/movie_details_app_bar.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/movie_details.dart';

class MovieScreenDetailsBody extends StatelessWidget {
  const MovieScreenDetailsBody({super.key, required this.movie});
  final Movie movie;
  @override
  @override
  Widget build(BuildContext context) {
    final List<dynamic> genres = Genre().getGenreNamesByIds(movie.genreIds);

    return CustomScrollView(
      slivers: [
        MovieDetailsAppBar(movie: movie),
        MovieDetails(genres: genres, movie: movie),
      ],
    );
  }
}
