// import material dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
      drawer: Drawer(),
    );
  }
}