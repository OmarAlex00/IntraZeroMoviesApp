import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/widgets/app_bar_fav.dart';
import 'package:intrazeromovies/core/widgets/app_bar_logo.dart';
import 'package:intrazeromovies/core/widgets/app_bar_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.isFavIcon});
  final bool isFavIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppBarLogo(),
        const Spacer(),
        isFavIcon ? const AppBarFav() : const SizedBox.shrink(),
        const AppBarSearch()
      ],
    );
  }
}
