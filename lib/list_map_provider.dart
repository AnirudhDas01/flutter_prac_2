import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListMapProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _data = [];

  List getData() => _data;

  void addData(Map<String, dynamic> data) {
    _data.add(data);
    notifyListeners();
  }
}
