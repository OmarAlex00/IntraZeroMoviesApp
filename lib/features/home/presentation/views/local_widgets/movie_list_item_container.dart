import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intrazeromovies/core/utils/app_router.dart';
import 'package:intrazeromovies/core/widgets/movie_img.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/movie_item_container_details_column.dart';

class MovieListItemContainer extends StatelessWidget {
  const MovieListItemContainer({
    super.key,
    required this.movie,
  });
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.kMovieDetailsScreenRouter, extra: movie);
      },
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 15,
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
              height: 150,
              child: Row(
                children: [
                  MovieImg(
                    movie: movie,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  MovieItemContainerDetailsColumn(movie: movie)
                ],
              )),
        ),
      ),
    );
  }
}
