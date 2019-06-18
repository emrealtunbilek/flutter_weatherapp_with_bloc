import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_weatherapp_with_bloc/models/weather.dart';
import './bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  @override
  WeatherState get initialState => InitialWeatherState();

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is FetchWeatherEvent) {
      yield WeatherLoadingState();
      try {
        //hava durumunu getirme kodları
        yield WeatherLoadedState(weather: Weather());
      } catch (_) {
        yield WeatherErrorState();
      }
    }
  }
}
