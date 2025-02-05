import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/data/datasources/base_remote_data_source.dart';
import 'package:news_app/features/home/data/datasources/remote_data_source.dart';
import 'package:news_app/features/home/data/repositories/home_repository.dart';
import 'package:news_app/features/home/domain/repositories/base_home_repository.dart';
import 'package:news_app/features/home/domain/usecases/get_all_articles_usecase.dart';

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
      Response response =
          await GetAllArticlesUsecase(baseHomeRepository: baseHomeRepository)
              .execute() as Response;
    });
  }
}
