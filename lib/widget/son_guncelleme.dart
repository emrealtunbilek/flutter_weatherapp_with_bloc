import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weatherapp_with_bloc/blocs/weather/bloc.dart';

class SonGuncellemeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _weatherBloc = BlocProvider.of<WeatherBloc>(context);
    return BlocBuilder(
        bloc: _weatherBloc,
        builder: (context, WeatherState state) {
          var yeniTarih = (state as WeatherLoadedState).weather.time.toLocal();

          return Text(
            'Son Güncelleme  ' +
                TimeOfDay.fromDateTime(yeniTarih).format(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          );
        });
  }
}
