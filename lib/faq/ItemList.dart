import 'package:flutter/material.dart';

import 'Item.dart';
import 'data.dart';

class ItemList extends StatefulWidget {
  ItemList({Key key}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<Item> _data = data;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: item.panelText,
            );
          },
          body: ListTile(
            title: item.expandedText,
            subtitle: item.child,
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
