import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydesktopbody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.deepPurple[200],
     appBar: AppBar(title: Text('D E S K T O P'),),
     body:Row(
         children:[
       Expanded(
       child: Column(
         children: [
           Padding(padding: EdgeInsets.all(8),
             child: AspectRatio(aspectRatio: 16/5,child: Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
               color: Colors.deepPurple[400],
             ),),
           ),
           Expanded(
             child: ListView.builder(itemBuilder: (context,index){
               return Padding(
                 padding: EdgeInsets.all(8),
                 child: Container(
                   color: Colors.deepPurple[300],
                   height: MediaQuery.of(context).size.height,
                 ),
               );
             }),
           )
         ],
       ),
    )
  ])
    );

  }
  
}