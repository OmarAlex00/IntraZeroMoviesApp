import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrazeromovies/core/utils/constants.dart';
import 'package:intrazeromovies/core/utils/styles.dart';
import 'package:intrazeromovies/core/widgets/custom_app_bar.dart';
import 'package:intrazeromovies/core/widgets/error_text.dart';
import 'package:intrazeromovies/core/widgets/loading_indicator.dart';
import 'package:intrazeromovies/features/home/presentation/controllers/get_movies_cubit/get_movies_cubit.dart';
import 'package:intrazeromovies/features/home/presentation/views/local_widgets/movie_list_item_container.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetMoviesCubit, GetMoviesState>(
        builder: (context, state) {
      if (state is GetMoviesSuccess) {
        return CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverAppBar(
              backgroundColor: ConstantVars.kTextMainColor,
              pinned: true,
              title: CustomAppBar(),
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
                'Latest Movies',
                style: Styles.homeTitleMedium.copyWith(fontSize: 36),
              ),
            )),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15,
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              childCount: state.movies.length,
              (context, index) {
                return MovieListItemContainer(
                  movie: state.movies[index],
                );
              },
            )),
          ],
        );
      } else if (state is GetMoviesFailure) {
        return ErrorText(errMsg: state.errMessage);
      } else {
        return const LoadingIndicator();
      }
    });
  }
}
