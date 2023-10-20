import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/service/weather_service.dart';
import 'get_weather_state.dart';

class get_weather_cubit extends Cubit<WeatherState> {
  get_weather_cubit() : super(no_weather_state());

  weather_model? WeatherModelCubit;
  GetWeather({required String CityName}) async {
    try {
      WeatherModelCubit =
          await weather_service(Dio()).GetWeather(cityName: CityName);

      emit(weather_loade_state(weatherMOdelState: WeatherModelCubit!));
    } catch (e) {
      emit(error_weather_state());
    }
  }
}
