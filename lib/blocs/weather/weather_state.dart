import 'package:equatable/equatable.dart';
import 'package:flutter_weatherapp_with_bloc/models/weather.dart';
import 'package:meta/meta.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();
}

class InitialWeatherState extends WeatherState {
  @override
  List<Object> get props => [];
}

class WeatherLoadingState extends WeatherState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WeatherLoadedState extends WeatherState {
  Weather weather;
  WeatherLoadedState({@required this.weather});

  @override
  // TODO: implement props
  List<Object> get props => [weather];


}

class WeatherErrorState extends WeatherState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

