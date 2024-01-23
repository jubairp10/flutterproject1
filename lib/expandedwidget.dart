import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expandedwid(),));
}
class expandedwid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(child:Container(
              color: Colors.grey,
              height: 100,
              width: 100,
              
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.indigo,
                height: 100,
                width: 100,
              ),
            ),
            Container(
              color: Colors.yellowAccent,
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }

}