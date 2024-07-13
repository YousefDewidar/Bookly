class ApiService {
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await _dio.get('$baseUrl$endPoint');

    return response.data;
  }
}
