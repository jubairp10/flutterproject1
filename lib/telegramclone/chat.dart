import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tchat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey,
    body: Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('date'),
        Container(
          color: Colors.white,
          child: ExpansionTile(title: Text('Kriss Benwant'),
            leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
            ),
            subtitle: Text('Good to know'),
            trailing: Text('19:50'),
            children: [
              ListTile(title:Text('Last seen:'),)
            ],),
        ),
        Text('date'),
        Container(
          color: Colors.white,
          child: ExpansionTile(title: Text('Kriss Benwant'),
            leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
            ),
            subtitle: Text('Good to know'),
            trailing: Text('19:50'),
            children: [
              ListTile(title:Text('Last seen:'),)
            ],),
        ),
        Row(mainAxisSize: MainAxisSize.min,
          children: [
           SizedBox(width: 230,),
            Text('2 calls')
          ],
        ),

      ],
    ),
    floatingActionButton: FloatingActionButton(onPressed: ()=>(context),child: Icon(Icons.call),),
  );
  }


}