import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;

  int getCount() => _count;

  void increaseCount() {
    _count++;
    notifyListeners();
  }

  void decrementCounter() {
    _count = _count > 0 ? _count - 1 : 0;
    notifyListeners();
  }
}
