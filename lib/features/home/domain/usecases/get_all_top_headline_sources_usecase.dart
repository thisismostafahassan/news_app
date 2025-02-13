import 'package:dartz/dartz.dart';
import 'package:news_app/core/errors/failure.dart';
import 'package:news_app/features/home/domain/entities/article.dart';
import 'package:news_app/features/home/domain/repositories/base_home_repository.dart';

class GetAllTopHeadlineSourcesUsecase {
  final BaseHomeRepository baseHomeRepository;
  GetAllTopHeadlineSourcesUsecase({required this.baseHomeRepository});

  Future<Either<Failure, List<Article>>> execute({required String path}) async {
    return await baseHomeRepository.getSelectedHeadline(path: path);
  }
}
