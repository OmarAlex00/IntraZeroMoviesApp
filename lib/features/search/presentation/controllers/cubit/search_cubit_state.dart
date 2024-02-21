part of 'search_cubit_cubit.dart';

sealed class SearchCubitState extends Equatable {
  const SearchCubitState();

  @override
  List<Object> get props => [];
}

final class SearchCubitInitial extends SearchCubitState {}

class SearchCubitLoading extends SearchCubitState {}

class SearchCubitFailure extends SearchCubitState {
  final String errMessage;

  const SearchCubitFailure(this.errMessage);
}

class SearchCubitSuccess extends SearchCubitState {
  final List<Movie> movies;

  const SearchCubitSuccess(this.movies);
}
