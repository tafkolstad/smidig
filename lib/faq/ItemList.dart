import 'package:flutter/material.dart';
import 'Item.dart';
import 'data.dart';

class ItemList extends StatefulWidget {
  ItemList({Key key}) : super(key: key);
  final List<Item> _data = data;

  void collapseAll() {
    _data.forEach((element) {
      element.isExpanded = false;
    });
  }

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
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
          widget._data[index].isExpanded = !isExpanded;
        });
      },
      children: widget._data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: item.panelText,
            );
          },
          body: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              title: item.expandedText,
              subtitle: item.child,
            ),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
