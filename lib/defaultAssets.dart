import 'package:flutter/material.dart';

// Asset variabel yang digunakan untuk tampilan

class DefaultAsset {
  BoxDecoration defaultBackground = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: <Color>[
        Color.fromARGB(255, 75, 170, 248),
        Color.fromARGB(255, 243, 234, 246),
      ]));
  TextStyle defaultText = TextStyle(fontSize: 19);

  BoxDecoration getDBackgorund() {
    return this.defaultBackground;
  }

  TextStyle getDTextStyle() {
    return this.defaultText;
  }
}
