import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}


class FetchWeatherEvent extends WeatherEvent{
  String sehirAdi;


  FetchWeatherEvent({@required this.sehirAdi});

  @override
  // TODO: implement props
  List<Object> get props => [sehirAdi];

}
class RefreshWeatherEvent extends WeatherEvent{
  String sehirAdi;


  RefreshWeatherEvent({@required this.sehirAdi});

  @override
  // TODO: implement props
  List<Object> get props => [sehirAdi];

}
