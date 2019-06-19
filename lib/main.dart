import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/weather/bloc.dart';
import 'blocs/weather/tema/bloc.dart';
import 'locator.dart';
import 'widget/weather_app.dart';

void main() {
  setupLocator();
  runApp(BlocProvider<TemaBloc>(
    builder: (context) => TemaBloc(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<TemaBloc>(context),
      builder: (context, TemaState state) => MaterialApp(
            title: 'Weather App',
            debugShowCheckedModeBanner: false,
            theme: (state as UygulamaTemasi).tema,
            home: BlocProvider<WeatherBloc>(
                builder: (context) => WeatherBloc(), child: WeatherApp()),
          ),
    );
  }
}
