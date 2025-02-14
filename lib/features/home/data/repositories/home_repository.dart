import 'package:dartz/dartz.dart';
import 'package:news_app/core/errors/exception.dart';
import 'package:news_app/core/errors/failure.dart';
import 'package:news_app/features/home/data/datasources/base_remote_data_source.dart';
import 'package:news_app/features/home/data/models/article_model.dart';
import 'package:news_app/features/home/domain/repositories/base_home_repository.dart';

class HomeRepository implements BaseHomeRepository {
  final BaseRemoteDataSource baseRemoteDataSource;
  HomeRepository({required this.baseRemoteDataSource});
  @override
  Future<Either<Failure, List<ArticleModel>>> getAllArticles() async {
    final response = await baseRemoteDataSource.getAllArticles();

    try {
      return Right(response);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }

  @override
  Future<Either<Failure, List<ArticleModel>>> getSelectedCategoryArticles(
      {required String path}) async {
    final response =
        await baseRemoteDataSource.getSelectedCategoryArticles(path: path);

    try {
      return Right(response);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }
}
