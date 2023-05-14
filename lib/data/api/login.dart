import 'package:dio/dio.dart';
import 'package:flutter/fix_data.yaml';
import 'package:test12/constants/strings.dart';

class Loginapi{
  late Dio dio ;

  Loginapi(){
    BaseOptions options= BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );
    dio=Dio(options);
  }
  Future<List<dynamic>> getallshow() async{
    Response response = await dio.get('show');
    print(response.data.toString());
    return response.data;
  }

}