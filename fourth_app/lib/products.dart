import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset("assets/food.jpg"),
          Text(products[index])
        ],
      ),
    );
  }

  Widget _buildProductLists() {
    print('[Products Widget] _buildProductLists()');
    Widget productCard;

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      /* productCard = Center(
        child: Text("No products Found, Please add some"),
      ); */

      /*
      If you dont want to return anything if empty, 
      please return an empty container and not null as it is not a widget
      */
      productCard = Container();
    }
    return productCard;
  }

  build(BuildContext context) {
    print('[Products Widget] build()');
    return _buildProductLists();

    //Whole code in if Else block is moved to _buildProductListsMethod
    /* Widget productCard;

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text("No products Found, Please add some"),
      );
    }
    return productCard; */

    /* 
    this code is moved to in the if block
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductItem,
            itemCount: products.length,
          )
        : Center(
            child: Text("No products Found, Please add some"),
          );*/
  }
}
