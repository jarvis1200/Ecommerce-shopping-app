import 'package:alita/homescreen/homescreen.dart';
import 'package:alita/pages/JewelDetail.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "bangles",
      "picture": "assets/necllack.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "bangles",
      "picture": "assets/bangles.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "bangles",
      "picture": "assets/earring.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "bangles",
      "picture": "assets/necllack.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "bangles",
      "picture": "assets/jewell_sets.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "bangles",
      "picture": "assets/combos.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "bangles",
      "picture": "assets/bangles.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "bangles",
      "picture": "assets/tshirt.png",
      "old_price": 120,
      "price": 100,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_product(
              product_Name: product_list[index]['name'],
              product_Picture: product_list[index]['picture'],
              product_Old_Price: product_list[index]['old_price'],
              product_Price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_Name;
  final product_Picture;
  final product_Old_Price;
  final product_Price;

  Single_product({
    this.product_Name,
    this.product_Picture,
    this.product_Old_Price,
    this.product_Price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute
                //passing values to jeweldetail
                (
                builder: (context) => new JewelDetail(
                      JewelDetail_Name: product_Name,
                      JewelDetail_Picture: product_Picture,
                      JewelDetail_Price: product_Price,
                      JewelDetail_Oldprice: product_Old_Price,
                    ))),
            child: GridTile(
                footer: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      color: Colors.white70),
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                            product_Name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          )),

                      new Text(
                        "\r$product_Old_Price Rs",
                        style: TextStyle(
                            color: Colors.grey, decoration: TextDecoration.lineThrough),

                      ),

                      new Text(
                        "\r$product_Price Rs",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
                child: Image.asset(product_Picture, fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
