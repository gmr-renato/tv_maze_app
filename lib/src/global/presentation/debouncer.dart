import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  Debouncer({required this.milliseconds});

  Timer? _timer;
  final int milliseconds;

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
