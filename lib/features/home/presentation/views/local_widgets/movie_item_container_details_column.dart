import 'package:flutter/material.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/movie_main_details.dart';

class MovieItemContainerDetailsColumn extends StatelessWidget {
  const MovieItemContainerDetailsColumn({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: MovieMainDetails(movie: movie),
    );
  }
}
