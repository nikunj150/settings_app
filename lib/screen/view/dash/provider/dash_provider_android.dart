import 'package:flutter/cupertino.dart';

class DashProvider with ChangeNotifier{
  int index=0;

  void changestep(i){
    index=i;
    notifyListeners();
  }
}