class ServerException implements Exception {
  final String? message;

  ServerException(this.message);
}

class LocalDataBase implements Exception {
  final String? message;

  LocalDataBase(this.message);
}
