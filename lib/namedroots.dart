
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/registrationpageassigment.dart';

import 'login with validation.dart';
void main(){
  runApp(MaterialApp(home: namedroots(),
  routes: {
    'Loginpage':(context)=>loginpage(),
    'Homepage':(context)=>registrationpage()
  },));

}
class namedroots extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Column(
         children: [
           ElevatedButton(onPressed: (){
             Navigator.of(context).pushNamed('Loginpage');
           }, child: Text('Loginpage')),
           ElevatedButton(onPressed: (){
             Navigator.of(context).pushNamed('Homepage');
           }, child: Text('Homepage'))
         ],
       ),
     ),
   );
  }

}