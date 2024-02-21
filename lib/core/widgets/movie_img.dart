import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/utils/assets.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/core/widgets/loading_indicator.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';

class MovieImg extends StatelessWidget {
  const MovieImg({
    super.key,
    required this.movie,
  });
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AspectRatio(
        aspectRatio: 1,
        child: movie.backdropPath == null
            ? Image.asset(
                Asset.kPlaceHolderImg,
                fit: BoxFit.fill,
              )
            : CachedNetworkImage(
                imageUrl: '${ConstantVars.movieImagePath}${movie.backdropPath}',
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(Icons.error),
                progressIndicatorBuilder: (context, url, progress) =>
                    const LoadingIndicator(),
              ),
      ),
    );
  }
}
