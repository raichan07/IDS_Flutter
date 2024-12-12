import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: "https://picsum.photos/v2",
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
  ));

  // Fetch gambar dari API
  Future<List<dynamic>> fetchPictures() async {
    try {
      final response = await _dio.get("/list");
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception("Failed to load pictures");
      }
    } on DioError catch (e) {
      if (e.response != null) {
        throw Exception("Error: ${e.response?.statusMessage}");
      } else {
        throw Exception("Connection Error: ${e.message}");
      }
    }
  }
}
