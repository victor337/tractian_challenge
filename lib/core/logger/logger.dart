import 'package:flutter/foundation.dart';

class Logger {
  void log(Object e, StackTrace s) {
    debugPrint(e.toString());
    debugPrint(s.toString());
  }
}
