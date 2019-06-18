import 'package:equatable/equatable.dart';
import 'package:flutter_weatherapp_with_bloc/models/weather.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherState extends Equatable {
  WeatherState([List props = const []]) : super(props);
}

class InitialWeatherState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final Weather weather;
  WeatherLoadedState({@required this.weather}) : super([weather]);
}

class WeatherErrorState extends WeatherState {}
