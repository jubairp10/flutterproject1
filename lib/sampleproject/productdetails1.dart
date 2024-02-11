import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/sampleproject/sampleprojectdata.dart';

class productdetails1 extends StatefulWidget{
  @override
  State<productdetails1> createState() => _productdetails1State();
}

class _productdetails1State extends State<productdetails1> {
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final product=sampleProject.firstWhere((product) => product['id']==id);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Row(children:[ Image(image: AssetImage(product['image']),),
                                Image(image: AssetImage(product['image2']),)]),
          ),
          Text(product['brand name']),
          Text(product['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          Text(product['description']),
          Row(children:[ Text('\$'),Text('${product['price']}')])
        ],
      ),
    );
  }
}