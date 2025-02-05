import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/enum.dart';
import 'package:news_app/features/home/data/datasources/base_remote_data_source.dart';
import 'package:news_app/features/home/data/datasources/remote_data_source.dart';
import 'package:news_app/features/home/data/repositories/home_repository.dart';
import 'package:news_app/features/home/domain/entities/article.dart';
import 'package:news_app/features/home/domain/repositories/base_home_repository.dart';
import 'package:news_app/features/home/domain/usecases/get_all_articles_usecase.dart';
import 'package:news_app/features/home/domain/usecases/get_all_top_headline_sources_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  List allArticles = [];
  List topHeadlinesArticles = [];
  HomeBloc() : super(HomeInitial()) {
    // Get All Articles
    on<GetAllArticlesEvent>((event, emit) async {
      final BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
      final BaseHomeRepository baseHomeRepository =
          HomeRepository(baseRemoteDataSource: baseRemoteDataSource);
      final response =
          await GetAllArticlesUsecase(baseHomeRepository: baseHomeRepository)
              .execute();

      response.fold(
          (l) => emit(GetAllArticlesState(
                articles: [],
                message: l.message,
                requestState: RequestState.error,
              )), (r) {
        allArticles = r;
        emit(GetAllArticlesState(
          articles: r,
          message: 'Success',
          requestState: RequestState.loaded,
        ));
      });
    });
    //
    //
    // Get All TopHeadlines
    on<GetAllTopHeadlinesArticlesEvent>((event, emit) async {
      final BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
      final BaseHomeRepository baseHomeRepository =
          HomeRepository(baseRemoteDataSource: baseRemoteDataSource);
      final response = await GetAllTopHeadlineSourcesUsecase(
              baseHomeRepository: baseHomeRepository)
          .execute();

      response.fold(
          (l) => emit(GetAllTopHeadlinesArticlesState(
                articles: [],
                message: l.message,
                requestState: RequestState.error,
              )), (r) {
        topHeadlinesArticles = r;
        emit(GetAllTopHeadlinesArticlesState(
          articles: r,
          message: 'Success',
          requestState: RequestState.loaded,
        ));
      });
    });
    //
    //
  }
}
