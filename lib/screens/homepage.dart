import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/models/catalog.dart';
import 'package:flutter_shopping_app/widgets/ItemWidget.dart';
import 'package:flutter_shopping_app/widgets/myDrawer.dart';

class HomePage extends StatelessWidget {
  final dummyList = List.generate(4, (index) => CatalogModel.items[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App "),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),
    );
  }
}
