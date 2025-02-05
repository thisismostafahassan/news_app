import 'package:dio/dio.dart';
import 'package:news_app/core/constants/api_constants.dart';

class DioHelper {
  late Dio dio;

  DioHelper() {
    dio = Dio(baseOptions);
  }

  BaseOptions baseOptions = BaseOptions(
    baseUrl: ApiConstants.baseUrl,
    receiveDataWhenStatusError: true,
    receiveTimeout: const Duration(milliseconds: 10 * 1000),
    connectTimeout: const Duration(milliseconds: 10 * 1000),
    headers: {'Content-Type': 'application/json'},
  );

  Future<Response> getHttp({required String path}) async {
    Response response = await dio.get(path);

    return response;
  }
}
