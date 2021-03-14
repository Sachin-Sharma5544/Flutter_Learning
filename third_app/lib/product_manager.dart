import 'package:flutter/material.dart';

import './products.dart';

class ProductsManager extends StatefulWidget {
  final String startingProduct;
  ProductsManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _products.add('New Food Doner');
              });
            },
            child: Text('Add NEW Product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
