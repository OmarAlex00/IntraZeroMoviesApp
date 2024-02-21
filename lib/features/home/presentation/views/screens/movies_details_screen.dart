import 'package:flutter/material.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/movie_details_screen_body.dart';

class MoviesDetailsScreen extends StatelessWidget {
  const MoviesDetailsScreen({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MovieScreenDetailsBody(
        movie: movie,
      ),
    );
  }
}
