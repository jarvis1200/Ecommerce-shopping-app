import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: "assets/bangles.jpg",
            image_caption: "tshirt",
          ),
          Category(
            image_location: "assets/jewell_sets.jpg",
            image_caption: "tshirt",
          ),
          Category(
            image_location: "assets/combos.jpg",
            image_caption: "tshirt",
          ),
          Category(
            image_location: "assets/earring.jpg",
            image_caption: "tshirt",
          ),
          Category(
            image_location: "assets/earring.jpg",
            image_caption: "tshirt",
          ),
          Category(
            image_location: "assets/earring.jpg",
            image_caption: "tshirt",
          ),
          Category(
            image_location: "assets/earring.jpg",
            image_caption: "tshirt",
          ),
          Category(
            image_location: "assets/earring.jpg",
            image_caption: "tshirt",
          ),
          Category(
            image_location: "assets/earring.jpg",
            image_caption: "tshirt",
          ),
          Category(
            image_location: "assets/earring.jpg",
            image_caption: "tshirt",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 120.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 50.0,
            ),
            subtitle: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(5.0),
                child: Text(
                  image_caption,
                )),
          ),
        ),
      ),
    );
  }
}
