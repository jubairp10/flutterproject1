import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calllist extends StatelessWidget{
  var title=['Prathab kumar','Anu','Balu','Cat','David','Saranya'];
  var email=['Prathabkumar@gmail.com','Anu@gmail.com','Balu@gmail.com','Cat@gmail.com','David@gmail.com','Saranya@gmail.com'];
  var leading=['P',"A","B",'C','D','S'];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView.builder(itemBuilder: (context,index){
      return ListTile(
        leading:CircleAvatar(backgroundColor:Colors.teal,child: Text('${leading[index]}')) ,
        title:Text('${title[index]}'),

        subtitle: Text('${email[index]}'),
      );
    },itemCount: title.length,),
  );
  }

}