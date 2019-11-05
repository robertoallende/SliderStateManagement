import 'package:flutter/foundation.dart';

class MySchedule with ChangeNotifier{

  double _stateManagementTime = 0.1;

  double get stateManagementTime => _stateManagementTime;

  set stateManagementTime(double newValue) {
    _stateManagementTime = newValue;
    notifyListeners();
  }

}