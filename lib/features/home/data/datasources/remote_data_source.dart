import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app/core/constants/api_constants.dart';
import 'package:news_app/core/errors/exception.dart';
import 'package:news_app/features/home/data/datasources/base_remote_data_source.dart';
import 'package:news_app/features/home/data/models/article_model.dart';

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<List<ArticleModel>> getAllArticles() async {
    final response = await Dio().get(ApiConstants.everything);
    log(response.data);
    if (response.statusCode == 200) {
      return List<ArticleModel>.from(
        (response.data as List).map((e) => ArticleModel.fromJson(e)),
      );
    } else {
      throw ServerException(response.statusMessage);
    }
  }

  @override
  Future<List<ArticleModel>> getAllTobHeadlineSources() async {
    final response = await Dio().get(ApiConstants.topHeadlineallSources);
    log(response.data);
    if (response.statusCode == 200) {
      return List<ArticleModel>.from(
        (response.data as List).map(
          (e) => ArticleModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(response.statusMessage);
    }
  }
}
