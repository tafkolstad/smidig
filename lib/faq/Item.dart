import 'package:flutter/material.dart';

class Item {
  Item({
      this.panelText,
      this.expandedText, 
      this.child, 
      this.isExpanded = false
  });

  Widget panelText;
  Widget expandedText;
  Widget child;
  bool isExpanded;
}
