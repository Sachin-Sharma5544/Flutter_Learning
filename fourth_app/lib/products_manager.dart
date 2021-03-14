import 'package:flutter/material.dart';

import 'products.dart';
import 'products_control.dart';

class ProductsManager extends StatefulWidget {
  final String firstProduct;
  ProductsManager({this.firstProduct}) {
    print('[ProductsManager Widget] Constructor');
  }
  @override
  State<StatefulWidget> createState() {
    print('[ProductsManager Widget] Create State');
    return ProductsManagerState();
  }
}

class ProductsManagerState extends State<ProductsManager> {
  List<String> _products = [];

  void initState() {
    if (widget.firstProduct != null) {
      _products.add(widget.firstProduct);
    }
    print('[ProductsManager Widget] InitState() method');

    //super.initState();
  }

  void didUpdateWidget(ProductsManager oldWidget) {
    print('[Products Widget] didUpdateWidget() method');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  build(BuildContext context) {
    print('[ProductsManager Widget] Build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Expanded(
          child: Products(_products),
        ),
      ],
    );
  }
}
