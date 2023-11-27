import 'package:flutter/cupertino.dart';

class DashIosProvider with ChangeNotifier {

  int stepIndex = 0;

  void changestep(i) {
    stepIndex = i;
    notifyListeners();
  }
}