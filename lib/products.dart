import 'package:flutter/material.dart';

import 'pages/product_details.dart';

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
      "old_price": "180"
    },
    {
      "name": "Tshirt",
      "picture": 'images/products/blazer2.jpeg',
      "price": '120.0',
      "old_price": "180"
    },
    {
      "name": "Pants",
      "picture": 'images/products/pants2.jpeg',
      "price": '120.0',
      "old_price": "180"
    },
    {
      "name": "Dress",
      "picture": 'images/products/dress1.jpeg',
      "price": '120.0',
      "old_price": "180"
    },
    {
      "name": "Dress2",
      "picture": 'images/products/dress2.jpeg',
      "price": '120.0',
      "old_price": "180"
    },
    {
      "name": "Hills",
      "picture": 'images/products/hills2.jpeg',
      "price": '120.0',
      "old_price": "180"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
              name: product_list[index]["name"],
              picture: product_list[index]["picture"],
              oldPrice: product_list[index]["old_price"],
              price: product_list[index]["price"]);
        });
  }
}

class SingleProduct extends StatelessWidget {
  final String name;
  final String picture;
  final String oldPrice;
  final String price;

  SingleProduct(
      {@required this.name,
      @required this.picture,
      @required this.oldPrice,
      @required this.price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => ProductDetails(
                      name: name,
                      picture: picture,
                      oldPrice: oldPrice,
                      price: price)),
            ),
            child: GridTile(
              child: Image.asset(
                picture,
                fit: BoxFit.fill,
              ),
              footer: Container(
                height: 20,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '\$$price',
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
