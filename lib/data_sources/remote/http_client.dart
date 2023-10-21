import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Client {
  late Dio dio;

  Client() {
    final options = BaseOptions(
      baseUrl: 'https://bootcamp.free.beeceptor.com/',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );
    dio = Dio(options);
    debugPrint("******** Client started");
  }

  Future<MyResponse> get({required String path}) async {
    try {
      Response response = await dio.get(path);
      if (response.statusCode==200) {
        return MyResponse(response: response);
      } else {
        return MyResponse();
      }
    } catch (error, stackTrace) {
      print(error);
      print(stackTrace);
      return MyResponse();
    }
  }
}

class MyResponse {
  final Response? response;

  MyResponse({
    this.response,
  });
}
