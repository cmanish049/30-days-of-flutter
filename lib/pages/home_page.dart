// import material dart
import 'package:flutter/material.dart';
import 'package:three/models/catalog.dart';
import 'package:three/widgets/drawer.dart';
import 'package:three/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  
  final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      // body
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
