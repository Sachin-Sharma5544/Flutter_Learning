import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  ProductControl(this.addProduct);

  build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        addProduct('SWEETS');
      },
      child: Text('Add Product'),
    );
  }
}
