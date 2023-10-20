import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_model.dart';

class weather_service {
  final Dio dio;
  weather_service(this.dio);
  final String baseURL = 'https://api.weatherapi.com/v1';
  final String ApiKey = 'a10fbecafd7c43d48b2154250231609';

  Future<weather_model> GetWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseURL/forecast.json?key=$ApiKey&q=$cityName&days=1');

      weather_model weatherModel = weather_model.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      Response error = e.response?.data['error']['message'] ??
          " Oops there was an error , try latter";
      throw Exception(error);
    } catch (e) {
      log(e.toString());
      throw Exception(" Oops there was an error , try latter");
    }
  }
}
