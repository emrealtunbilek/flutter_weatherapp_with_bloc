import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  final String secilenSehir;

  LocationWidget({@required this.secilenSehir});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Ankara",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
