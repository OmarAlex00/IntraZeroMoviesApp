import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrazeromovies/core/widgets/error_text.dart';
import 'package:intrazeromovies/core/widgets/loading_indicator.dart';
import 'package:intrazeromovies/features/search/presentation/controllers/cubit/search_cubit_cubit.dart';
import 'package:intrazeromovies/features/search/presentation/views/widgets/results_list_builder.dart';
import 'package:intrazeromovies/features/search/presentation/views/widgets/search_no_results.dart';

class ResultsMoviesList extends StatelessWidget {
  const ResultsMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    bool isEmpty = true;
    return BlocConsumer<SearchCubitCubit, SearchCubitState>(
      listener: (context, state) {
        isEmpty = BlocProvider.of<SearchCubitCubit>(context).isEmpty;
      },
      builder: (context, state) {
        if (isEmpty) {
          return const SearchNoResults();
        } else {
          if (state is SearchCubitSuccess) {
            return ResultsListBuilder(
              movies: state.movies,
            );
          } else if (state is SearchCubitFailure) {
            return ErrorText(errMsg: state.errMessage);
          } else {
            return const LoadingIndicator();
          }
        }
      },
    );
  }
}
