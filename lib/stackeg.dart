import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: stackeg(),));
}
class stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         Container(color: Colors.white,height: double.infinity,width: double.infinity,child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 225,right:10,),
               child: Text('JUBI',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 50),),
             )
           ],
         ),),

         Positioned(child: ClipRRect(borderRadius:BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40)),child: Container(color: Colors.blue,)),width:600,height: 150,),
         Positioned(child: ClipRRect(borderRadius:BorderRadius.all(Radius.circular(10)),child: Container(child: Image(image: AssetImage('assets/icons/men.jpeg'),fit: BoxFit.fill,),)),left: 250,top: 110,height: 100,width: 100,),
       ],
     ),
   );
  }

}