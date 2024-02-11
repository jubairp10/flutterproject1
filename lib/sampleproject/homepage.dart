

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutterproject1/sampleproject/productdetails1.dart';
import 'package:flutterproject1/sampleproject/sampleprojectdata.dart';
import 'package:flutterproject1/sampleproject/splashui.dart';
void main(){
  runApp(MaterialApp(home: IntroScreenDefault(),
    routes: {
      'secondpage':(context)=>productdetails1()
    },));
}
class homepage extends StatefulWidget{
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView(
        children: sampleProject.map((product) => GestureDetector(
          child: Card(child: Column(children:[
            Image(image: AssetImage(product['image']),height: 150,width: 150,),
            Text('${product['name']}'),
            Text('${product['brand name']}'),
          SizedBox(height: 40,),
          Text('MRP'),

          Row(children:[ Text('\$'),Text('${product['price']}')])])
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