import 'package:dio/dio.dart';

class HTTpService {
  HTTpService();

  final _dio = Dio();

  Future<Response?> get(String path) async {
    try {
      Response res = await _dio.get(path);
      return res;
    } catch (e) {
      print(e);
    }
    return null;
  }
}
