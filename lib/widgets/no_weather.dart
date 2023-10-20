import 'package:flutter/material.dart';

class no_weather extends StatelessWidget {
  const no_weather({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "There is no weather 😢 \n Start searching now 🔍",
            style: TextStyle(fontSize: 25),
          ),
          // SizedBox(
          //   height: 9,
          // ),
          // Text(
          //   "",
          //   style: TextStyle(fontSize: 25),
          // ),
        ],
      ),
    );
  }
}
