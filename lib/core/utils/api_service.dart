// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiServes {
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiServes(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$baseUrl$endPoint');

    return response.data;
  }
}
