import 'package:news_app/features/home/data/models/article_model.dart';

abstract class BaseRemoteDataSource {
  Future<List<ArticleModel>> getAllArticles();
  Future<List<ArticleModel>> getAllTobHeadlineSources();
}
