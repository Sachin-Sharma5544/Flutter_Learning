import 'package:flutter/material.dart';

import 'products_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Item Add App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Item Addition App'),
        ),
        body: ProductsManager(),
        // ProductsManager("Dello") becomes redundant as the variable has been
        // declared as named argument and same has to be passed using the
        // variable name
      ),
    );
  }
}
