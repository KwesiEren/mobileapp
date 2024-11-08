import 'package:dio/dio.dart';
import 'package:mobileapp/models/model.dart';

class APIServices {
  final Dio _dio = Dio();
  final String baseUrl =
      "http://training.cersgis.org/api/locations"; // replace with your actual API URL

  Future<List<GeoData>> fetchGeoData() async {
    try {
      final response = await _dio.get(baseUrl);
      if (response.statusCode == 200) {
        // Convert the response data into a list of GeoData
        return (response.data as List)
            .map((item) => GeoData.fromJson(item))
            .toList();
      } else {
        throw Exception('Failed to load GeoData');
      }
    } catch (e) {
      throw Exception('Error fetching GeoData: $e');
    }
  }
}
