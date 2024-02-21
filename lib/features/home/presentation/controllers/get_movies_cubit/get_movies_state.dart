part of 'get_movies_cubit.dart';

abstract class GetMoviesState extends Equatable {
  const GetMoviesState();

  @override
  List<Object> get props => [];
}

class GetMoviesInitial extends GetMoviesState {}

class GetMoviesLoading extends GetMoviesState {}

class GetMoviesFailure extends GetMoviesState {
  final String errMessage;

  const GetMoviesFailure(this.errMessage);
}

class GetMoviesSuccess extends GetMoviesState {
  final List<Movie> movies;

  const GetMoviesSuccess(this.movies);
}
