import 'package:dartz/dartz_streaming.dart';

class Article {
  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? publishedAt;
  final String? content;
  final String? articleUrl;
  final String? urlToImage;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.publishedAt,
    required this.content,
    required this.articleUrl,
    required this.urlToImage,
  });
}
