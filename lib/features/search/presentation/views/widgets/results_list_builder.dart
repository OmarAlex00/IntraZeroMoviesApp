import 'package:flutter/material.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/movie_list_item_container.dart';

class ResultsListBuilder extends StatelessWidget {
  const ResultsListBuilder({
    super.key,
    required this.movies,
  });
  final List<Movie> movies;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: movies.length,
      padding: const EdgeInsets.only(top: 5, bottom: 20),
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 10, right: 48),
            child: MovieListItemContainer(movie: movies[index]));
      },
    );
  }
}
