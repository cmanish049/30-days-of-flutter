// ignore_for_file: public_member_api_docs, sort_constructors_first
// import material dart
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:three/utils/routes.dart';
import 'package:three/widgets/home_widgets/catalog_header.dart';
import 'package:three/widgets/home_widgets/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:three/models/catalog.dart';
import 'package:three/widgets/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    final productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () { Navigator.pushNamed(context, MyRoutes.cartRoute); },
        backgroundColor: MyTheme.darkBluishColor,
        child: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
        )),
        body: SafeArea(
            child: Container(
                padding: Vx.m32,
                child: Column(
                  children: [
                    const CatalogHeader(),
                    CatalogModel.items.isNotEmpty
                        ? const CatalogList().py16().expand()
                        : const CircularProgressIndicator().centered().py16().expand()
                  ],
                ))));
  }
}




