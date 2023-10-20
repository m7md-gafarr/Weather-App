import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/screens/HomePage.dart';

void main() => runApp(const weather());

class weather extends StatelessWidget {
  const weather({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => get_weather_cubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<get_weather_cubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                primarySwatch: ChangeColor(
                    BlocProvider.of<get_weather_cubit>(context)
                        .WeatherModelCubit
                        ?.temp),
              ),
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            );
          },
        );
      }),
    );
  }
}

MaterialColor ChangeColor(double? temp) {
  if (temp == null) {
    return Colors.blue;
  }
  if (temp > -10 && temp <= 0) {
    return Colors.amber;
  } else if (temp > 1 && temp <= 15) {
    return Colors.brown;
  } else if (temp > 16 && temp <= 25) {
    return Colors.cyan;
  } else {
    return Colors.green;
  }
}
