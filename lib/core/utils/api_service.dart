import 'package:dio/dio.dart';

class APIService {
  final _baseURL = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  APIService(this._dio);

  Future<Map<String, dynamic>> get(String endPoint) async {
    var response = await _dio.get('$_baseURL$endPoint');
    return response.data;
  }
}
