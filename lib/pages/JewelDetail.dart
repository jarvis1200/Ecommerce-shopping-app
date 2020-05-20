import 'package:alita/homescreen/homescreen.dart';
import 'package:alita/pages/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JewelDetail extends StatefulWidget {
  final JewelDetail_Name;
  final JewelDetail_Picture;
  final JewelDetail_Price;
  final JewelDetail_Oldprice;

  JewelDetail({this.JewelDetail_Name,
    this.JewelDetail_Picture,
    this.JewelDetail_Price,
    this.JewelDetail_Oldprice});

  @override
  _JewelDetailState createState() => _JewelDetailState();
}

class _JewelDetailState extends State<JewelDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(onTap: () =>Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new HomePage())),
              child: Image.asset(
                "assets/alita logo.png",
                fit: BoxFit.contain,
                height: 90,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
          new IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart())))
        ],
      ),
      body: ListView(
        children: <Widget>[
        Container(
        height: 300,
        child: GridTile(
          child: Container(
            color: Colors.white,
            child: Image.asset(widget.JewelDetail_Picture),
          ),
          footer: new Container(
            color: Colors.white70,
            child: ListTile(
              leading: new Text(
                widget.JewelDetail_Name,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              title: new Row(
                children: <Widget>[
                  Expanded(
                      child: new Text("\r${widget.JewelDetail_Oldprice} Rs",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough))),
                  Expanded(
                      child: new Text(
                        "\r${widget.JewelDetail_Price} Rs",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
      Row(
        children: <Widget>[
          Expanded(
            child: MaterialButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return new AlertDialog(
                        title: Text("Size"),
                        content: Text("Choose the size"),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("close"),
                          )
                        ],
                      );
                    });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text("Size"),
                  ),
                  Expanded(
                    child: Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return new AlertDialog(
                        title: Text("Quantity"),
                        content: Text("Choose the quantity"),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: new Text("close"),
                          )
                        ],
                      );
                    });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text("Quantity"),
                  ),
                  Expanded(
                    child: Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Expanded(
            child: MaterialButton(
                onPressed: () {},
                color: Colors.black,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Buy Now")),
          ),
          new IconButton(
              icon: Icon(Icons.add_shopping_cart),
              color: Colors.black,
              onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.favorite_border),
              color: Colors.black,
              onPressed: () {}),
        ],
      ),
      Divider(),
      new ListTile(
        title: Text("Product Details"),
        subtitle: Text(
            "Make her feel special with a gift that she will treasure forever. The Aarohee diamond mangalsuta bracelet with black beaded chain and stylish diamond charm in the design to define true beauty and elegance")


        ),

          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product Name",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.JewelDetail_Name),),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Brand",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text('something'),),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Condition",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("nothing"),),
            ],
          ),

          Divider(),
          Padding(padding: EdgeInsets.all(8.0),child:
    new Text("Similar products")),
          Container(height: 360,
          child: Similar_Products(),
          )
        ],
      ),
    );
  }
}

class Similar_Products extends StatefulWidget {
  @override
  _Similar_ProductsState createState() => _Similar_ProductsState();
}

class _Similar_ProductsState extends State<Similar_Products> {

  var product_list = [
    {
      "name": "bangles",
      "picture": "assets/necllack.jpg",
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

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_Single_product(
            product_Name: product_list[index]['name'],
            product_Picture: product_list[index]['picture'],
            product_Old_Price: product_list[index]['old_price'],
            product_Price: product_list[index]['price'],
          );
        });
  }
}
class Similar_Single_product extends StatelessWidget {
  final product_Name;
  final product_Picture;
  final product_Old_Price;
  final product_Price;

  Similar_Single_product({
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

