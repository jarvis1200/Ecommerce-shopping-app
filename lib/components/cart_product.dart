import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var Product_on_cart = [
    {
      "name": "bangles",
      "picture": "assets/necllack.jpg",
      "size": 3,
      "quantity": 1,
      "price": 100,
    },
    {
      "name": "bangles",
      "picture": "assets/bangles.jpg",
      "size": 3,
      "quantity": 1,
      "price": 100,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Product_on_cart.length,
        itemBuilder: (context, index) {
          return Single_CartProduct(
            cart_product_Name: Product_on_cart[index]["name"],
            cart_product_Picture: Product_on_cart[index]["picture"],
            cart_product_Size: Product_on_cart[index]["size"],
            cart_product_Quantity: Product_on_cart[index]["quantity"],
            cart_product_Price: Product_on_cart[index]["price"],
          );
        });
  }
}

class Single_CartProduct extends StatelessWidget {
  final cart_product_Name;
  final cart_product_Picture;
  final cart_product_Size;
  final cart_product_Quantity;
  final cart_product_Price;

  Single_CartProduct({
    this.cart_product_Name,
    this.cart_product_Picture,
    this.cart_product_Size,
    this.cart_product_Quantity,
    this.cart_product_Price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_product_Picture,width: 80.0,height: 80.0,),
        title: new Text(cart_product_Name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: EdgeInsets.all(6.0),
                  child: new Text("\r$cart_product_Size",style: TextStyle(color: Colors.black),),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Quantity:"),
                ),
                Padding(
                  padding: EdgeInsets.all(6.0),
                  child: new Text("\r$cart_product_Quantity",style: TextStyle(color: Colors.black),),
                ),
              ],
            ),
            
            new Container(
              alignment: Alignment.bottomLeft,
              child: new Text("\r$cart_product_Price Rs", style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 17.0),),
            )
          ],
        ),
        trailing: FittedBox(fit: BoxFit.contain,
          child: new Column(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
              new Text("\r$cart_product_Quantity"),
              new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
