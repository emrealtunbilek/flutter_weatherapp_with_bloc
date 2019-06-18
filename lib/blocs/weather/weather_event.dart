import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherEvent extends Equatable {
  WeatherEvent([List props = const []]) : super(props);
}

class FetchWeatherEvent extends WeatherEvent {
  final String sehirAdi;
  FetchWeatherEvent({@required this.sehirAdi}) : super([sehirAdi]);
}
