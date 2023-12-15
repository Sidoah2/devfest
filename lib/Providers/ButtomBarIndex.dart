import 'package:flutter/material.dart';

class ButtomBarIndex extends ChangeNotifier {
  int _pagecurrent = 0;
  int get pagecurrent => _pagecurrent;
  set pagecurrent(newpage) {
    _pagecurrent = newpage;
    notifyListeners();
  }
}
