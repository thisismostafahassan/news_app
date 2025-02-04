import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:news_app/core/constants/api_constants.dart';

class DioHelper {
  final dio = Dio();

  void getHttp() async {
    Response response = await dio.get(ApiConstants.baseUrl);
    log(response.toString());
  }
}
