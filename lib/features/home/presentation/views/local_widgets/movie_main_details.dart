import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/utils/styles.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/movie_other_details.dart';

class MovieMainDetails extends StatelessWidget {
  const MovieMainDetails({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .48,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Text(
              movie.title ?? '',
              style: Styles.movieTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            movie.overview ?? '',
            style: Styles.movieOverView,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          MovieOtherDetails(movie: movie),
        ],
      ),
    );
  }
}
