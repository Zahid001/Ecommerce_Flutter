import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            imageLocation: 'images/cats/tshirt.png',
            imageCaption: 'tshirt',
          ),
          Category(
            imageLocation: 'images/cats/jeans.png',
            imageCaption: 'jeans',
          ),
          Category(
            imageLocation: 'images/cats/formal.png',
            imageCaption: 'formal',
          ),
          Category(
            imageLocation: 'images/cats/informal.png',
            imageCaption: 'informal',
          ),
          Category(
            imageLocation: 'images/cats/shoe.png',
            imageCaption: 'Jeans',
          ),
          Category(
            imageLocation: 'images/cats/dress.png',
            imageCaption: 'dress',
          ),
          Category(
            imageLocation: 'images/cats/accessories.png',
            imageCaption: 'accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
            width: 100.0,
            child: Column(
              children: [
                Image.asset(
                  imageLocation,
                  width: 100.0,
                  height: 80.0,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      imageCaption,
                      style: new TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

/*

ListTile(
              title: Image.asset(
                imageLocation,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  imageCaption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              )),


*/
