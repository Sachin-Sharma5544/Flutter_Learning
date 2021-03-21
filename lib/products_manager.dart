import 'package:flutter/material.dart';
import 'package:simple_item_add_app/product_control.dart';

import 'products.dart';

class ProductsManager extends StatefulWidget {
  final String firstProduct;
  /*// ProductsManager(this.firstProduct);
  // Above declaration makes the attribute to be passed from Outside */

  /* ProductsManager({this.firstProduct});
  // Above declaration defines named argument for the class and The value has 
  // to be passed from outside using the name of argument */

  ProductsManager({this.firstProduct = "Jello"});
  // Above declaration in curly braces makes the named attribute optional when a
  // value is assigned in above manner

  @override
  State<StatefulWidget> createState() {
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductsManager> {
  /* Now lets make the _products List to receive the argument from Outside
     and update the List 
  */
  //List<String> _products = ['Hello'];

  //Empty List is declaried to receive the argument from outside

  List<String> _products = [];
  @override
  void initState() {
    // using 'widget.firstProduct' we can access the value in firstProduct
    // attribute from ProductManager Class to ProductManagerState Class
    // which is actually passed from outside
    _products.add(widget.firstProduct);
    super.initState();
  }

  void _addProducts(String product) {
    setState(() {
      _products.add(product);
      print(_products);
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductsControl(_addProducts),
        ),
        //Products(_products): This has to be wrapped into Expanded Widget as
        // return type is ListView Widget
        Expanded(
          child: Products(_products),
        ),
      ],
    );
  }
}
