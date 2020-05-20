import 'package:alita/components/cart_product.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[new Text("My Cart")],
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),

      body:  new CartProducts(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: new ListTile(
              title: new Text("Total:"),
              subtitle: new Text("500 Rs"),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {},
              color: Colors.black,
              child: new Text(
                "Checkout",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
