import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products);

  Widget _buildProduct(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset("assets/Football.jpg"),
          Text(products[index]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProduct,
      itemCount: products.length,
    );

    /* // Column returns un-scrollable list, so inorder to make list scrollable

    // ListView widget is returned
    // For ListVew Retun type widget, respective product should be either
    // wrapped in container or Expanded Widget
    //return Column(
    //-----------------------------------------------------------------------//
    // returning ListView is not a performant way of rendering the element
    // it renders all the element in one time and all the elements lives in 
    // menory until application is closed

    // LisView.builder is efficient way of rendering the product on screen
    // as it places the product in memory when it is rendered on screen, and 
    // destroyes from memory when it moves out from screen
    return ListView(
      children: products
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/Football.jpg'),
                  Text(element),
                ],
              ),
            ),
          )
          .toList(),
    ); */
  }
}
