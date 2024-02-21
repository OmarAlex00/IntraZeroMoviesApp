import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/core/utils/styles.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';

class MovieDetailsRating extends StatelessWidget {
  const MovieDetailsRating({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ConstantVars.kRateIcon,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                '${movie.voteAverage?.toStringAsFixed(1)}',
                style: Styles.homeTitleMedium,
              ),
            ),
            Text(
              '(${movie.voteCount})',
              style: Styles.homeTitleMedium,
            )
          ],
        ),
      ),
    );
  }
}
