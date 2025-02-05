import 'package:dartz/dartz.dart';
import 'package:news_app/core/errors/failure.dart';
import 'package:news_app/features/home/domain/entities/article.dart';
import 'package:news_app/features/home/domain/repositories/base_home_repository.dart';

class GetAllArticlesUsecase {
  final BaseHomeRepository baseHomeRepository;
  GetAllArticlesUsecase({required this.baseHomeRepository});

  Future<Either<Failure, List<Article>>> execute() async {
    return await baseHomeRepository.getAllArticles();
  }
}
