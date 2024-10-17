import 'package:flutter/material.dart';

class Toggleprovider  extends ChangeNotifier{
  bool _isOn=false;

  bool get isOn=>_isOn;
  void toggleswitch() {
    _isOn=!_isOn;
    notifyListeners();
  }
}