import 'package:flutter/material.dart';

class HomeProv with ChangeNotifier {
  bool searchActive = false;
  searchChange(){
    searchActive = !searchActive;
    notifyListeners();
  }
 
}