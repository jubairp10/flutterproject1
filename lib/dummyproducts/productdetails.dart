import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/dummyproducts/dummydata.dart';

class productdetails extends StatefulWidget{
  @override
  State<productdetails> createState() => _productdetailsState();
}

class _productdetailsState extends State<productdetails> {
  @override
  Widget build(BuildContext context) {
  final id=ModalRoute.of(context)?.settings.arguments;
  final product=dummyProducts.firstWhere((product) => product['id']==id);
  return Scaffold(
    body: ListView(
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: Image(image: AssetImage(product['image']),),
        ),
        Text(product['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        Text(product['Description']),
        Text(product['price'])
      ],
    ),
  );
  }
}