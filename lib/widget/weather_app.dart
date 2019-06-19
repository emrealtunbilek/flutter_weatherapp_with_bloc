import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weatherapp_with_bloc/blocs/weather/bloc.dart';

import 'hava_durumu_resim.dart';
import 'location.dart';
import 'max_min_sicaklik.dart';
import 'sehir_sec.dart';
import 'son_guncelleme.dart';

class WeatherApp extends StatelessWidget {
  String kullanicininSectigiSehir = "Ankara";

  @override
  Widget build(BuildContext context) {
    final _weatherBloc = BlocProvider.of<WeatherBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () async {
                kullanicininSectigiSehir = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SehirSecWidget()));
                debugPrint("Seçilen sehir: " + kullanicininSectigiSehir);
                if (kullanicininSectigiSehir != null) {
                  _weatherBloc.dispatch(
                      FetchWeatherEvent(sehirAdi: kullanicininSectigiSehir));
                }
              }),
        ],
      ),
      body: Center(
        child: BlocBuilder(
          bloc: _weatherBloc,
          builder: (context, WeatherState state) {
            if (state is InitialWeatherState) {
              return Center(
                child: Text("Şehir Seçiniz"),
              );
            }
            if (state is WeatherLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is WeatherLoadedState) {
              final getirilenWeather = state.weather;

              return ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: LocationWidget(
                      secilenSehir: kullanicininSectigiSehir,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: SonGuncellemeWidget()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: HavaDurumuResimWidget()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(child: MaxveMinSicaklikWidget()),
                  ),
                ],
              );
            }
            if (state is WeatherErrorState) {
              return Center(
                child: Text("Hata Oluştu"),
              );
            }
          },
        ),
      ),
    );
  }
}
