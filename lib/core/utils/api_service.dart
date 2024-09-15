import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final String _baseUrl = 'https://api.currentsapi.services/v1/';

  const ApiService(this._dio);

  Future<Map<String, dynamic>?> get(String endPoint) async {
    var requestUrl = _baseUrl + endPoint;
    var response = await _dio.get<Map<String, dynamic>>(requestUrl);
    return response.data;
  }
}
