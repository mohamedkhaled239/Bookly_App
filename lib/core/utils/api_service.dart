// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiService(
    this.dio,
  );
  Future<Map<String, dynamic>> get({required String endpPoint}) async {
    var response = await dio.get('$_baseUrl$endpPoint');

    return response.data;
  }
}
