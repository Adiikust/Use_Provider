import 'package:flutter/foundation.dart';
class DataItemControllerProvider with ChangeNotifier{
  List<int> _selectedItem =[];
  List<int> get selectedItem => _selectedItem;

  void addItemData(int val){
_selectedItem.add(val);
notifyListeners();
  }

  void removeItemData(int val){
    _selectedItem.remove( val);
    notifyListeners();
  }
}