import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weatherapp_with_bloc/blocs/weather/bloc.dart';

class MaxveMinSicaklikWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _weatherBloc = BlocProvider.of<WeatherBloc>(context);

    return BlocBuilder(
      bloc: _weatherBloc,
      builder: (_, WeatherState state) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Maksimum : " +
                    (state as WeatherLoadedState)
                        .weather
                        .consolidatedWeather[0]
                        .maxTemp
                        .floor()
                        .toString() +
                    " ℃",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Minimum  : " +
                    (state as WeatherLoadedState)
                        .weather
                        .consolidatedWeather[0]
                        .minTemp
                        .floor()
                        .toString() +
                    " ℃",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
    );
  }
}
