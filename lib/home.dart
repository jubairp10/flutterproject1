import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: home(),debugShowCheckedModeBanner: false,));
}
class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Card(color: Colors.lightGreenAccent,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/flutter-icon.png'),),
            title: Text('Flutter'),
            subtitle: Text('352640593'),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.lightGreenAccent,
          child: ListTile(
            leading: Image(image: AssetImage('assets/icons/flutter-icon.png'),),
            title: Text('Flutter'),
            subtitle: Text('352640593'),
            trailing: Icon(Icons.call),
          ),
        ),Card(color: Colors.black54,
          child: ListTile(
            leading: Image(image: AssetImage('assets/icons/flutter-icon.png'),),
            title: Text('Flutter'),
            subtitle: Text('352640593'),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color:Colors.purple,child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/flutter-icon.png'),),
          title: Text('ramya'),
          subtitle: Text('5464'),
          trailing: Icon(Icons.call),
        ))
      ],
      ),
    );
  }

}