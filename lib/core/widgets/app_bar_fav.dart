import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intrazeromovies/core/utils/app_router.dart';
import 'package:intrazeromovies/core/utils/constants.dart';

class AppBarFav extends StatelessWidget {
  const AppBarFav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kFavScreenRouter);
        },
        icon: const Icon(
          Icons.favorite,
          color: ConstantVars.kLogoColor,
        ));
  }
}
