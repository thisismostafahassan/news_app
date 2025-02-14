import 'package:flutter/material.dart';
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
  List<Article> allArticles = [];
  List<Article> selectedArticles = [];
  bool isCategorySelected = false;
  ScrollController scrollController = ScrollController();
  RequestState currentState = RequestState.loading;
  late Article selectedArticle;
  HomeBloc() : super(HomeInitial()) {
    // Get All Articles
    on<GetAllArticlesEvent>((event, emit) async {
      final BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
      final BaseHomeRepository baseHomeRepository =
          HomeRepository(baseRemoteDataSource: baseRemoteDataSource);
      final response =
          await GetAllArticlesUsecase(baseHomeRepository: baseHomeRepository)
              .execute();

      response.fold((l) {
        currentState = RequestState.error;
        emit(GetAllArticlesState(
          articles: [],
          message: l.message,
          requestState: currentState,
        ));
      }, (r) {
        allArticles = r;
        currentState = RequestState.loaded;
        emit(GetAllArticlesState(
          articles: r,
          message: 'Success',
          requestState: currentState,
        ));
      });
    });
    //
    // Get Selected Article Event
    on<GetSelectedCategoryArticlesEvent>((event, emit) async {
      final BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
      final BaseHomeRepository baseHomeRepository =
          HomeRepository(baseRemoteDataSource: baseRemoteDataSource);
      final response = await GetAllTopHeadlineSourcesUsecase(
              baseHomeRepository: baseHomeRepository)
          .execute(path: event.path);

      response.fold(
          (l) => emit(GetSelectedCategoryArticlesState(
                articles: [],
                message: l.message,
                requestState: RequestState.error,
              )), (r) {
        selectedArticles = r;
        isCategorySelected = true;
        emit(GetSelectedCategoryArticlesState(
          articles: r,
          message: 'Success',
          requestState: RequestState.loaded,
        ));
      });
    });
    //
    //
    on<GetSelectedArticleEvent>((event, state) {
      selectedArticle = event.selectedArticle;
    });
    //
    //
    on<AnimateToTopEvent>((event, state) {
      scrollController.animateTo(
        0.0,
        duration: Duration(microseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }
}
