import 'package:flutter/material.dart';

import './product_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome To Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome To India'),
        ),
        body: ProductsManager('h'),
      ),
    );
  }
}
