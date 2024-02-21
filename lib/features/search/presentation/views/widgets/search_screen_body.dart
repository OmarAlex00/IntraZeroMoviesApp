import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrazeromovies/features/search/presentation/controllers/cubit/search_cubit_cubit.dart';
import 'package:intrazeromovies/features/search/presentation/views/widgets/results_movies_list.dart';
import 'package:intrazeromovies/features/search/presentation/views/widgets/search_result.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    String searchValue = '';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onChanged: (value) {
              searchValue = value;
            },
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                BlocProvider.of<SearchCubitCubit>(context).isEmpty = false;
                BlocProvider.of<SearchCubitCubit>(context)
                    .fetchResultsMovies(title: searchValue);
              } else {
                BlocProvider.of<SearchCubitCubit>(context).isEmpty = true;
              }
            },
            decoration: InputDecoration(
                enabledBorder: borderStyle(),
                hintText: 'Search',
                focusedBorder: borderStyle(),
                suffixIcon: IconButton(
                  onPressed: () {
                    if (searchValue.isNotEmpty) {
                      BlocProvider.of<SearchCubitCubit>(context).isEmpty =
                          false;
                      BlocProvider.of<SearchCubitCubit>(context)
                          .fetchResultsMovies(title: searchValue);
                    } else {
                      BlocProvider.of<SearchCubitCubit>(context).isEmpty = true;
                    }
                  },
                  icon: const Opacity(opacity: 0.5, child: Icon(Icons.search)),
                )),
          ),
          const SearchResult(),
          const Expanded(child: ResultsMoviesList())
        ],
      ),
    );
  }

  OutlineInputBorder borderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.white));
  }
}
