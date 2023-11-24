import 'package:flutter/material.dart';


class ContactProvider  with ChangeNotifier {

  DateTime? Date =DateTime.now();
  TimeOfDay? Time =TimeOfDay.now();

  void changedate(DateTime? d1)
  {
    Date =d1;
    notifyListeners();
  }
  void changeTime(TimeOfDay? d2)
  {
    Time = d2;

    notifyListeners();
  }
}