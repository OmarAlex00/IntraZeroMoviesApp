import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrazeromovies/features/favourite/presentation/controllers/get_Fav_movies_cubit/get_fav_movies_cubit.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/movie_list_item_container.dart';

class FavMoviesList extends StatelessWidget {
  const FavMoviesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFavMoviesCubit, GetFavMoviesState>(
        builder: (context, state) {
      List<Movie> movies =
          BlocProvider.of<GetFavMoviesCubit>(context).movies ?? [];

      return SliverList(
          delegate: SliverChildBuilderDelegate(
        childCount: movies.length,
        (context, index) {
          return MovieListItemContainer(
            movie: movies[index],
            fromFav: true,
          );
        },
      ));
    });
  }
}
