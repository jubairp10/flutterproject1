import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: stackexample(),));
}
class stackexample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Stack(
         children: [
           Container(color: Colors.black,height: 300,width: 300,),
           Positioned(child: Container(color: Colors.purpleAccent,),height: 200,width: 200,left: 50,bottom: 40,),
           Positioned(child: Container(color: Colors.indigo,),height: 150,width: 150,right: 80,bottom: 60,)
         ],
       ),
     ),
   );
  }

}