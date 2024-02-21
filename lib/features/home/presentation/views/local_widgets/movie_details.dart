import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/utils/styles.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/generes_row.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/movie_details_rating.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({
    super.key,
    required this.genres,
    required this.movie,
  });

  final List genres;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          GenresRow(genres: genres),
          const SizedBox(
            height: 10,
          ),
          Text(
            movie.title ?? '',
            style: Styles.movieDetailsTitle,
            textAlign: TextAlign.center,
          ),
          movie.originalLanguage != 'en'
              ? Text(
                  movie.originalTitle ?? '',
                  style: Styles.homeTitleMedium,
                  textAlign: TextAlign.center,
                )
              : const SizedBox.shrink(),
          const SizedBox(
            height: 5,
          ),
          Text(
            movie.releaseDate ?? '',
            style: Styles.movieDate,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              movie.overview ?? '',
              style: Styles.movieDetailsOverview,
            ),
          ),
          MovieDetailsRating(movie: movie),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
