import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: childlistdelegate(),));
}
class childlistdelegate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(
          [
            Card(color:Colors.blue,child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage('assets/icons/burger.png'),) ,
              title:Text('BURGER') ,
              trailing: Icon(Icons.fastfood),
            )),
            Card(color:Colors.blueAccent,child: ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage('assets/icons/cake.png')) ,
              title:Text('CAKE') ,
              trailing: Icon(Icons.fastfood),
            )),
            Card(color: Colors.blueGrey,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/noodles.png'),),
              title: Text('Noodles'),
              trailing: Icon(Icons.fastfood),
            ),)
          ]
      )),
    );
  }

}