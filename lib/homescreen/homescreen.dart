import 'package:alita/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:alita/components/horizontal_list.dart';
import 'package:alita/components/Product.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget Image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [AssetImage('alita_bg.jpg'), AssetImage('propic.jfif')],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotColor: Colors.black,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              "assets/alita logo.png",
              fit: BoxFit.contain,
              height: 90,
            )
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
      bottomNavigationBar: SnakeNavigationBar(
        style: SnakeBarStyle.floating,
        backgroundColor: Colors.white70,
        currentIndex: _currentIndex,
        padding: EdgeInsets.all(4),


        items: [
          BottomNavigationBarItem(
              icon: Icon(
            Icons.home,
          )),
          BottomNavigationBarItem(
              icon: Icon(
            Icons.search,
          )),
          BottomNavigationBarItem(
              icon: Icon(
            Icons.favorite_border,
          )),
          BottomNavigationBarItem(
              icon: Icon(
            Icons.person,
          )),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("JARVIS"),
              accountEmail: Text("JArvis@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: AssetImage("assets/propic.jfif"),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.black),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home,color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person,color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My order"),
                leading: Icon(Icons.shopping_basket,color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.dashboard,color: Colors.black),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favorites"),
                leading: Icon(Icons.favorite,color: Colors.black),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          Image_carousel,
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Categories"),
          ),
          HorizontalList(),
          new Padding(
            padding: EdgeInsets.all(20.0),
            child: new Text('Recents Products'),
          ),
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
