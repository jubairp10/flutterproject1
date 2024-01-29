import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: dismisable(),));
}
class dismisable extends StatelessWidget{
  var data=<String>['Data1 ','Data 2','Data 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: data.length,itemBuilder: (context,index){
        return Dismissible(key: ValueKey(data), child: ListTile(
          title:Center(child: Text(data[index])) ,

        ),
        background: Container(color: Colors.red,),
        secondaryBackground: Container(color: Colors.green,),);
      }),
    );

  }

}