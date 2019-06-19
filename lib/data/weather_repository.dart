import 'package:flutter_weatherapp_with_bloc/models/weather.dart';

import '../locator.dart';
import 'weather_api_client.dart';

class WeatherRepository {
  WeatherApiClient weatherApiClient = locator<WeatherApiClient>();

  Future<Weather> getWeather(String sehir) async {
    final int sehirID = await weatherApiClient.getLocationID(sehir);
    return await weatherApiClient.getWeather(sehirID);
  }
}
