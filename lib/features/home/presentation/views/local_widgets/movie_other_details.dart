import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/core/utils/styles.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';

class MovieOtherDetails extends StatelessWidget {
  const MovieOtherDetails({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          movie.releaseDate ?? '',
          style: Styles.movieDate,
        ),
        const Spacer(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstantVars.kRateIcon,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                '${movie.voteAverage?.toStringAsFixed(1)}',
                style: Styles.movieVoteRate,
              ),
            ),
            Text(
              '(${movie.voteCount})',
              style: Styles.movieVoteCount,
            ),
          ],
        ),
      ],
    );
  }
}
