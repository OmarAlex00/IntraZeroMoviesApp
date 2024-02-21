import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intrazeromovies/features/home/data/models/movie.dart';
import 'package:intrazeromovies/features/search/data/repos/search_repo.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit(this.searchRepo) : super(SearchCubitInitial());
  bool isEmpty = true;
  final SearchRepo searchRepo;
  Future<void> fetchResultsMovies({required String title}) async {
    emit(SearchCubitLoading());
    var results = await searchRepo.fetchResultsMovies(title: title);
    results.fold((failure) {
      emit(SearchCubitFailure(failure.errMessage));
    }, (success) {
      emit(SearchCubitSuccess(success));
    });
  }
}
