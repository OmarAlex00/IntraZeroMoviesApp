import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intrazeromovies/core/utils/app_router.dart';
import 'package:intrazeromovies/core/utils/constants.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kSearchScreenRouter);
        },
        icon: const Icon(
          Icons.search,
          color: ConstantVars.kLogoColor,
        ));
  }
}
