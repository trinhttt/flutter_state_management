import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  var isBlack = true;

  changeColor() {
    isBlack = !isBlack;
    notifyListeners();
  }
}
