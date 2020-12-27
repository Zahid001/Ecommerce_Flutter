import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String name;
  final String picture;
  final String oldPrice;
  final String price;

  ProductDetails(
      {@required this.name,
      @required this.picture,
      @required this.oldPrice,
      @required this.price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text('Demo'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                height: 300,
                color: Colors.amberAccent,
                child: Image.asset(
                  widget.picture,
                  fit: BoxFit.fill,
                ),
              ),
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    widget.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text("${widget.price}"),
                      ),
                      Expanded(
                        child: Text("${widget.oldPrice}"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*

 ListTile(
                leading: Text(
                  widget.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Row(
                  children: [
                    Expanded(
                      child: Text("${widget.price}"),
                    ),
                    Expanded(
                      child: Text("${widget.oldPrice}"),
                    ),
                  ],
                ),
              ),

*/
