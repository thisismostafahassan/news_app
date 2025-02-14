part of 'home_bloc.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class GetAllArticlesEvent extends HomeEvent {}

class GetSelectedCategoryArticlesEvent extends HomeEvent {
  final String path;
  GetSelectedCategoryArticlesEvent({required this.path});
}

class GetSelectedArticleEvent extends HomeEvent {
  final Article selectedArticle;

  GetSelectedArticleEvent({required this.selectedArticle});
}

class AnimateToTopEvent extends HomeEvent {}

class GetSelectedCategoryEvent extends HomeEvent {
  final String categoryPath;

  GetSelectedCategoryEvent({required this.categoryPath});
}

class ResetEvent extends HomeEvent {}
