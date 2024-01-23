import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridexample(),));
}
class gridexample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('CustomGridView'),backgroundColor: Colors.grey,),
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    children: [
      Container(

        child: Column(
         children: [
           Image(image: AssetImage('assets/icons/House-icon.png')),
           Text('Home'),

         ],
        ),),
      Container(
        child: Column(
          children: [
           Image(image: AssetImage('assets/icons/person.png')),Text('Person')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Image(image: AssetImage('assets/icons/House-icon.png')),            Text('Home'),

          ],
        ),),
      Container(
        child: Column(
          children: [
            Image(image: AssetImage('assets/icons/person.png'))            ,Text('Person')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Image(image: AssetImage('assets/icons/House-icon.png')),            Text('Home'),

          ],
        ),),
      Container(
        child: Column(
          children: [
            Image(image: AssetImage('assets/icons/person.png'))            ,Text('Person')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Image(image: AssetImage('assets/icons/House-icon.png')),            Text('Home'),

          ],
        ),),
      Container(
        child: Column(
          children: [
            Image(image: AssetImage('assets/icons/person.png'))            ,Text('Person')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Image(image: AssetImage('assets/icons/House-icon.png')),            Text('Home'),

          ],
        ),),
      Container(
        child: Column(
          children: [
            Image(image: AssetImage('assets/icons/person.png'))            ,Text('Person')
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            Image(image: AssetImage('assets/icons/House-icon.png')),            Text('Home'),

          ],
        ),),
    ], ),
   );
  }

}