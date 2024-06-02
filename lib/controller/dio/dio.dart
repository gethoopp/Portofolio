import 'package:dio/dio.dart';
import 'package:porto/models/models.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<dynamic>> fetchUsers() async {
    try {
      final response = await _dio.get('$_baseUrl/users');

      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => Books.fromJson(
                e)) // ignore: unnecessary_lambdas, unnecessary_new

            .toList();
      }

      return [];
    } catch (e) {
      throw Exception('Failed to load users: $e');
    }
  }
}

void main() {
  final apiService = ApiService();

  print(apiService.fetchUsers());
}
