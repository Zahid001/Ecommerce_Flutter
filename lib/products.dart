import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": 'images/products/blazer1.jpeg',
      "price": '120.0',
      "old_picture": "80"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Single_Product extends StatelessWidget {
  final String name;
  final String picture;
  final String old_price;
  final String price;

  Single_Product(
      {@required this.name,
      @required this.picture,
      @required this.old_price,
      @required this.price});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
