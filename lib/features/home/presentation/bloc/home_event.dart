part of 'home_bloc.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class GetAllArticlesEvent extends HomeEvent {}

class GetSelectedArticleEvent extends HomeEvent {
  final String path;
  GetSelectedArticleEvent({required this.path});
}
