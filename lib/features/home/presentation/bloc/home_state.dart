part of 'home_bloc.dart';

abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {}

class GetAllArticlesState extends HomeState {
  final RequestState? requestState;
  final List<Article>? articles;
  final String? message;
  GetAllArticlesState({
    this.requestState = RequestState.loading,
    this.articles = const [],
    this.message = '',
  });
}

class GetAllTopHeadlinesArticlesState extends HomeState {
  final RequestState? requestState;
  final List<Article>? articles;
  final String? message;
  GetAllTopHeadlinesArticlesState({
    this.requestState = RequestState.loading,
    this.articles = const [],
    this.message = '',
  });
}
