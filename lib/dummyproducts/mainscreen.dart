import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/dummyproducts/dummydata.dart';
import 'package:flutterproject1/dummyproducts/productdetails.dart';
void main(){
  runApp(MaterialApp(home: mainscreen(),
  routes: {
    'secondpage':(context)=>productdetails()
  },));
}
class mainscreen extends StatefulWidget{
  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: dummyProducts.map((product) => GestureDetector(
          child: Container(height: 200,
            width: 200,
            child: Card(child: Column(children:[ Text('${product['name']}'),
            Image(image: AssetImage(product['image']),height: 150,width: 150,)])),
          ),
          onTap: ()=>getnote(context,product['id']),
        )).toList(),
      ),
    );
  }

  getnote(BuildContext context, product) {
    Navigator.of(context).pushNamed('secondpage',arguments: product);
  }
}