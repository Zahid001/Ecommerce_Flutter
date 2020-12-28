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
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "\$${widget.oldPrice}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.price}",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //Divider(),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Size'),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Color'),
                      ),
                      Expanded(
                          child: Icon(
                        Icons.arrow_drop_down,
                      ))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Qty'),
                      ),
                      Expanded(
                          child: Icon(
                        Icons.arrow_drop_down,
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Expanded(
                    child: Text('Buy Now'),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            ],
          ),

          Divider(),

          ListTile(
            title: Text('Product Details'),
            subtitle: Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Text(
                  'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.'),
            ),
          ),

          Divider(),

          Container(
            margin: const EdgeInsets.only(left: 12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Product Name:'),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(widget.name),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Text('Product Details:'),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Wrap(children: [
                          Text(
                              'I have a Container where I need to show a barcode'),
                        ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: [
                      Text('Product Name:'),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(widget.name),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = MaterialButton(
    child: Text("OK"),
    onPressed: () {
      print('jnko');
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
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
