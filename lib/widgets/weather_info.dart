import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';

import '../main.dart';

class weather_info extends StatelessWidget {
  const weather_info({super.key, required this.WeatherModelInfo});
  final weather_model WeatherModelInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        ChangeColor(WeatherModelInfo.temp),
        ChangeColor(WeatherModelInfo.temp).shade300,
        ChangeColor(WeatherModelInfo.temp).shade600,
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              WeatherModelInfo.cityName,
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
            ),
            Text(
                "update at ${WeatherModelInfo.update.hour}:${WeatherModelInfo.update.minute}"),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                SizedBox(
                    height: 65,
                    child: Image.network("https:${WeatherModelInfo.image!}")),
                const Spacer(
                  flex: 3,
                ),
                Text(
                  WeatherModelInfo.temp.toString(),
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w500),
                ),
                const Spacer(
                  flex: 3,
                ),
                Column(
                  children: [
                    Text("Maxtemp: ${WeatherModelInfo.maxTemp.toInt()}"),
                    Text("Mintemp: ${WeatherModelInfo.minTemp.toInt()}")
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              WeatherModelInfo.state,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
