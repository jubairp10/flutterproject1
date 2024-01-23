import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/listviewcustem.dart';

class homepage extends StatelessWidget{
  var email=['jubi@123gmail.com','jasi@123gmail.com','najathu@gmail.com'];
  var name=['jubi','jasi','najathu'];

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(title: Text('App'),centerTitle: true,),
 body:ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){
   return Card(color: Colors.brown[70],
     child: ListTile(
       title:Text(email[index]) ,
       subtitle: Text(name[index]),
       trailing: Row(
         children: [

           ElevatedButton(onPressed: (){}, child: Text('ADD')),
           TextButton(onPressed: (){}, child: Text('DELETE'))
         ],
       ),

     ),
   );
 }),

 ) ,
);
  }

}