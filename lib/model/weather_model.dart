class weather_model {
  final String cityName;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String state;
  final DateTime update;

  const weather_model({
    required this.cityName,
    this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.state,
    required this.update,
  });
  factory weather_model.fromJson(json) {
    return weather_model(
      cityName: json['location']['name'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      state: json['forecast']['forecastday'][0]['day']['condition']['text'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      update: DateTime.parse(json['current']['last_updated']),
    );
  }
}
