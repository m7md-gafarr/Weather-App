import 'package:weather_app/model/weather_model.dart';

class WeatherState {}

class weather_loade_state extends WeatherState {
  final weather_model weatherMOdelState;
  weather_loade_state({required this.weatherMOdelState});
}

class no_weather_state extends WeatherState {}

class error_weather_state extends WeatherState {}
