import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  var count = 0;

  increment() {
    count++;
    notifyListeners();
  }
}
