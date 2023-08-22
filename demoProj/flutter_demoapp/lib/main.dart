import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Flutter Application',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: Car(),
    );
  }
}
class Car extends StatefulWidget {
  Car({Key key = const Key("")}) : super(key: key);
  // This widget is the home page of your application.
  @override
  _CarState createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product List")),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          children: <Widget>[
            ProductBox(
                name: "iPhone",
                description: "iPhone is the top branded phone ever",
                price: 55000,
                image: "iphone.png"
            ),
            ProductBox(
                name: "Android",
                description: "Android is a very stylish phone",
                price: 10000,
                image: "android.png"
            ),
            ProductBox(
                name: "Tablet",
                description: "Tablet is a popular device for official meetings",
                price: 25000,
                image: "tablet.png"
            ),
            ProductBox(
                name: "Laptop",
                description: "Laptop is most famous electronic device",
                price: 35000,
                image: "laptop.png"
            ),
            ProductBox(
                name: "Desktop",
                description: "Desktop is most popular for regular use",
                price: 10000,
                image: "computer.png"
            ),
            ProductBox(
                name: "Desktop",
                description: "Desktop is most popular for regular use",
                price: 10000,
                image: "computer.png"
            ),
            ProductBox(
                name: "Desktop",
                description: "Desktop is most popular for regular use",
                price: 10000,
                image: "computer.png"
            ),
            ProductBox(
                name: "Desktop",
                description: "Desktop is most popular for regular use",
                price: 10000,
                image: "computer.png"
            ),
          ],
        )
    );
  }
}
class ProductBox extends StatelessWidget {
  ProductBox({Key key = const Key(""), this.name = "", this.description = "", this.price = 0, this.image = ""}) :
        super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 110,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset("assets/" + image),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                  this.name, style: TextStyle(
                                  fontWeight: FontWeight.bold
                              )
                              ),
                              Text(this.description), Text(
                                  "Price: " + this.price.toString()
                              ),
                            ],
                          )
                      )
                  )
                ]
            )
        )
    );
  }
}