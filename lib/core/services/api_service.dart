import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await dio.get(endPoint, queryParameters: queryParameters);
  }
}
