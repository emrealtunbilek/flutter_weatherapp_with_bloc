import 'package:flutter/material.dart';

import 'hava_durumu_resim.dart';
import 'location.dart';
import 'max_min_sicaklik.dart';
import 'son_guncelleme.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: LocationWidget()),
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
        ),
      ),
    );
  }
}
