import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:intrazeromovies/core/utils/assets.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/core/widgets/loading_indicator.dart';
import 'package:intrazeromovies/features/favourite/presentation/controllers/add_fav_movies_cubit/add_fav_movies_cubit.dart';
import 'package:intrazeromovies/features/favourite/presentation/controllers/get_Fav_movies_cubit/get_fav_movies_cubit.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/favourite_icon_button.dart';

class MovieDetailsAppBar extends StatelessWidget {
  const MovieDetailsAppBar({
    super.key,
    required this.movie,
  });
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    var box = Hive.box<Movie>(ConstantVars.kFavMoviesBox);

    return BlocBuilder<AddFavMoviesCubit, AddFavMoviesState>(
        builder: (context, state) {
      return SliverAppBar(
        actions: [
          FavoriteIconButton(
            onTap: () async {
              if (box.values.toList().contains(movie)) {
                BlocProvider.of<AddFavMoviesCubit>(context).deleteMovie(movie);
              } else {
                BlocProvider.of<AddFavMoviesCubit>(context).addMovie(movie);
              }
            },
            box: box,
            movie: movie,
            icon: box.values.toList().contains(movie)
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_outline),
          ),
        ],
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
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  progressIndicatorBuilder: (context, url, progress) =>
                      const LoadingIndicator(),
                ),
        ),
      );
    });
  }
}
