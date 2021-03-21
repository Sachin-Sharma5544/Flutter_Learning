import 'package:flutter/material.dart';

class ProductsControl extends StatelessWidget {
  final Function addProduct;
  ProductsControl(this.addProduct);

  build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        addProduct("Gello");
        /* setState(() {
          _products.add('dude');
          print(_products);

          now this method iis moved to product_manager.dart
        }); */

        /*Set State is telling flutter to re-build the page 
              when add product is pressed i.e. it triggers build function */

/*               _products.add('Sachin');
              print(_products); */
      },
      child: Text('Add Item'),
    );
  }
}
