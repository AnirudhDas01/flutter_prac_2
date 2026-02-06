import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListMapProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _data = [];

  List getData() => _data;

  void addData(Map<String, dynamic> data) {
    _data.add(data);
    notifyListeners();
  }

  void updateData(Map<String, dynamic> data, int index) {
    _data[index] = data;
    notifyListeners();
  }

  void deleteData(int index) {
    _data.removeAt(index);
    notifyListeners();
  }
}
