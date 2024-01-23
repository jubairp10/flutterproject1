import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: splash(),));
}
class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black87,title: (Text('Flutter')),centerTitle: true,),
      body: Container(height: double.infinity,width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          children: [

          ],

        ),
      ),
    );
  }

}