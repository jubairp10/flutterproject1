import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/registrationdatastore/addDetails.dart';
import 'package:flutterproject1/registrationdatastore/viewDetails.dart';
void main(){
  runApp(MaterialApp(home: dataAdd(),));
}
class dataAdd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>addDetails()));
         }, child: Text('Add Data')),
         ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=>viewDetails()));

         }, child: Text('View Data'))
       ],
     ),
   );
  }
  
}


