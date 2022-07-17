import 'package:dio/dio.dart';

class Auth {
  Future<String> getHttp() async {
    try {
      var response = await Dio()
          .get('https://shamo-backend.buildwithangga.id/api/products');
      return response.statusCode.toString();
    } catch (e) {
      return e.toString();
    }
  }
}
