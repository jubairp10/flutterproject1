import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(isToolbarVisible:true,builder:(BuildContext context)=>MaterialApp(debugShowCheckedModeBanner: false,useInheritedMediaQuery: true,home: login(),)));
}
class login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.cyanAccent,title: Text('welcome'),centerTitle: true,),
      body: Container(


      ),
    );
  }

}