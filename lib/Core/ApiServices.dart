import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  final String url = "https://5f210aa9daa42f001666535e.mockapi.io/api";

  ApiServices(this.dio);

  Future<List<dynamic>> get({required String endpoind}) async {
    var response = await dio.get("$url/$endpoind");
    return response.data;
  }
}
