part of 'add_fav_movies_cubit.dart';

sealed class AddFavMoviesState extends Equatable {
  const AddFavMoviesState();

  @override
  List<Object> get props => [];
}

final class AddFavMoviesInitial extends AddFavMoviesState {}

final class AddFavMoviesLoading extends AddFavMoviesState {}

final class AddFavMoviesFailure extends AddFavMoviesState {
  final String errMessage;

  const AddFavMoviesFailure(this.errMessage);
}

final class AddFavMoviesSuccess extends AddFavMoviesState {}
