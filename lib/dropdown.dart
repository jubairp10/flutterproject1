import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: dropdown(),));
}
List<String> list=<String>['One','Two','Three'];
class dropdown extends StatefulWidget{
  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  String dropdownValue=list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drop down example'),),
      body: DropdownButton<String>(items: list.map<DropdownMenuItem<String>>((String drop){
        return DropdownMenuItem(child: Text('drop'),)
      }),onChanged: (String ? value){
        setState(() {
          dropdownValue=value!;
        });

      },
        value:dropdownValue ,
        icon: Icon(Icons.arrow_downward),
        elevation: 2,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        
      ),
    );
  }
}