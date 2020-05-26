import 'package:flutter/material.dart';

import 'Item.dart';

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      panelTitle: 'Panel $index',
      title: 'This is item number $index',
    );
  });
}

class ItemList extends StatefulWidget {
  ItemList({Key key}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<Item> _data = generateItems(2);

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
              title: Text(item.panelTitle),
            );
          },
          body: item.subtitle != null && item.subtitle.isNotEmpty
              ? ListTile(
                  title: Text(item.title),
                  subtitle: Text(item.subtitle),
                )
              : ListTile(
                  title: Text(item.title),
                ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
