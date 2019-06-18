import 'package:flutter/material.dart';

class MaxveMinSicaklikWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Maksimum : " + 24.toString() + " ℃",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "Minimum  : " + 12.toString() + " ℃",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
