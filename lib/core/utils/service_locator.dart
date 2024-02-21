import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:intrazeromovies/core/utils/api_service.dart';
import 'package:intrazeromovies/features/home/data/repos/movie_repo_impl.dart';
import 'package:intrazeromovies/features/search/data/repos/search_repo_imp.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<APIService>(APIService(Dio()));
  getIt.registerSingleton(MovieRepoImpl(
    getIt.get<APIService>(),
  ));
  getIt.registerSingleton(SearchRepoImp(
    getIt.get<APIService>(),
  ));
}
