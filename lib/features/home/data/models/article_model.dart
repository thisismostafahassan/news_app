import 'package:news_app/features/home/data/models/source_model.dart';
import 'package:news_app/features/home/domain/entities/article.dart';

class ArticleModel extends Article {
  ArticleModel({
    required super.source,
    required super.author,
    required super.title,
    required super.description,
    required super.publishedAt,
    required super.content,
    required super.articleUrl,
    required super.urlToImage,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      source: SourceModel.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      publishedAt: json['publishedAt'],
      content: json['content'],
      articleUrl: json['url'],
      urlToImage: json['urlToImage'],
    );
  }
  //
  @override
  String toString() {
    return 'ArticleModel(title: $title, content: $content, source: $source)';
  }
}
