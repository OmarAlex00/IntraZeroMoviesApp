part of 'get_fav_movies_cubit.dart';

abstract class GetFavMoviesState extends Equatable {
  const GetFavMoviesState();

  @override
  List<Object> get props => [];
}

class GetFavMoviesInitial extends GetFavMoviesState {}

class GetFavMoviesSuccess extends GetFavMoviesState {}
