import 'package:flutter/material.dart';

class ProgressProvider with ChangeNotifier {

  double _progress = 0;

  double get progress => _progress;

  void setProgress(double v) {
    _progress += v;
    notifyListeners();
  }
}
