import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';

class FavoriteIconButton extends StatelessWidget {
  const FavoriteIconButton({
    super.key,
    required this.box,
    required this.movie,
    required this.icon,
    this.onTap,
  });

  final Box<Movie> box;
  final Movie movie;
  final Icon icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onTap, icon: icon);
  }
}
