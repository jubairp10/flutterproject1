import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listbuilder(),));
}
class listbuilder extends StatelessWidget{
var title=['amal','ram','akshay','raju'];
var phone=['654545','95316543','587465','54456575',];
var color=[Colors.green,Colors.blueGrey,Colors.purple,Colors.grey];
var image=['assets/icons/flutter-icon.png','assets/icons/flutter-icon.png','assets/icons/flutter-icon.png','assets/icons/flutter-icon.png'];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('app'),),
     body: ListView.builder(itemBuilder: (context,index){
      return Card(color: color[index],
       child: ListTile(
         leading: CircleAvatar(backgroundImage: AssetImage('${image[index]}'),),
         title: Text('${title[index]}'),
         subtitle: Text('${phone[index]}'),
         trailing: Icon(Icons.call),

      ),
      );
     },itemCount: title.length,),
   );
  }

}