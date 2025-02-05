import 'package:dartz/dartz.dart';
import 'package:news_app/core/errors/failure.dart';
import 'package:news_app/features/home/domain/entities/article.dart';

abstract class BaseHomeRepository {
  Future<Either<Failure, List<Article>>> getAllArticles();
  Future<Either<Failure, List<Article>>> getTopHeadlinesArticles(
      {final String headLine});
}
