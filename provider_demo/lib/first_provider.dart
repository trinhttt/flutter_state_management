import 'package:flutter/material.dart';

class FirstProvider extends ChangeNotifier {
  var count = 0;

  increment() {
    count++;
    notifyListeners();
  }
}
