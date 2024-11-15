import 'package:flutter/material.dart';

class ExpandedViewModel extends ChangeNotifier {
  bool isExpanded = true;

  // Method to toggle expansion
  void toggleExpansion() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
