import 'package:flutter/cupertino.dart';

class CustomerSupportProvider extends ChangeNotifier{

  final Map<int,bool> _expansionStates = {};
  bool isExpanded(int index) => _expansionStates[index] ?? false;

  changeValue(int index, bool newValue){
    _expansionStates[index] = newValue;
    notifyListeners();
  }
}