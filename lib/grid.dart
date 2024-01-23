import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
      isToolbarVisible: true,
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: grid(),
      )));}
class grid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
     children: [
       Container(child:
         Icon(Icons.import_contacts),color: Colors.lightBlue,),
       Container(child: Icon(Icons.baby_changing_station),color: Colors.brown,),
       Container(child: Icon(Icons.vaccines),color: Colors.blueGrey,),
       Container(child: Icon(Icons.h_mobiledata),color: Colors.black45,),
       Container(child: Icon(Icons.screen_rotation),color: Colors.yellow,),
       Container(child: Icon(Icons.gamepad),color: Colors.deepOrange,),
       Container(child: Icon(Icons.table_bar),color: Colors.green,),
     ],
     ),

   );
  }

}