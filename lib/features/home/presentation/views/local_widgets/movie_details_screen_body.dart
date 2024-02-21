import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/utils/assets.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/core/utils/genre_function.dart';
import 'package:intrazeromovies/core/widgets/loading_indicator.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
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
        SliverAppBar(
          expandedHeight: 500,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: movie.backdropPath == null
                ? Image.asset(
                    Asset.kPlaceHolderImg,
                    fit: BoxFit.cover,
                  )
                : CachedNetworkImage(
                    imageUrl:
                        '${ConstantVars.movieImagePath}${movie.backdropPath}',
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    progressIndicatorBuilder: (context, url, progress) =>
                        const LoadingIndicator(),
                  ),
          ),
        ),
        MovieDetails(genres: genres, movie: movie),
      ],
    );
  }
}
