import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expantedtile(),));
}
class expantedtile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ExpansionTile(title: Text('Flutter'),
     subtitle: Text('hi'),
     children: [
       ListTile(leading: CircleAvatar(backgroundColor: Colors.yellowAccent,),
       subtitle:
         Text('yellow'),),
       ListTile(leading: CircleAvatar(backgroundColor: Colors.pinkAccent,),
       subtitle: Text('Pink'),),
       ListTile(leading: CircleAvatar(backgroundColor: Colors.black,),
       subtitle: Text('black'),),
       ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,),
         subtitle: Text('blue'),),
       ListTile(leading: CircleAvatar(backgroundColor: Colors.tealAccent,),
         subtitle: Text('teal'),),
     ],),

   );
  }

}