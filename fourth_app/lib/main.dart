import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'products_manager.dart';

void main() {
  print('[MyApp Widget] main() method');
  //debugPaintSizeEnabled = true;
  //debugPaintPointersEnabled = true;
  //debugPaintBaselinesEnabled = true;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  build(BuildContext context) {
    print('[MyApp Widget] build() method');
    return MaterialApp(
      //debugShowMaterialGrid: true,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.purple,
        brightness: Brightness.light,
      ),
      title: "FourthApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fourth App in the Series'),
        ),
        body: ProductsManager(),
      ),
    );
  }
}
