import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/core/utils/styles.dart';
import 'package:intrazeromovies/core/widgets/custom_app_bar.dart';
import 'package:intrazeromovies/features/favourite/presentation/views/local_widgets.dart/fav_movies_list.dart';

class FavScreenBody extends StatelessWidget {
  const FavScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverAppBar(
          foregroundColor: ConstantVars.kLogoColor,
          backgroundColor: ConstantVars.kTextMainColor,
          pinned: true,
          title: CustomAppBar(isFavIcon: false),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Favorite',
            style: Styles.homeTitleMedium.copyWith(fontSize: 36),
          ),
        )),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        const FavMoviesList(),
      ],
    );
  }
}
