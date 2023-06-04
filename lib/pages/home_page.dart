// import material dart
import 'package:flutter/material.dart';
import 'package:three/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      // body
      body: const Center(
        child: Text('Home Page'),
      ),
      drawer: const MyDrawer(),
    );
  }
}