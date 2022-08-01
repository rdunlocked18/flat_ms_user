import 'package:flutter/material.dart';

class CounterService extends ChangeNotifier {
  int _count = 0;
  int get counterValue => _count;

  int increment() {
    return _count++;
  }
}
