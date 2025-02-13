part of 'home_bloc.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class GetAllArticlesEvent extends HomeEvent {}

class GetAllTopHeadlinesArticlesEvent extends HomeEvent {}

class GetSelectedArticleEvent extends HomeEvent {}
