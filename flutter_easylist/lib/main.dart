import 'package:flutter/material.dart';

import './products_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Lover'),
        ),
        body: ProductManager('Food hater'),
      ),
    );
  }
}
