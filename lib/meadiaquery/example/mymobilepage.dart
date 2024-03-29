import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mymobilebody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(title: Text('M O B I L E'),),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8),
            child: AspectRatio(aspectRatio: 16/9,child: Container(
              color: Colors.deepPurple[400],
            ),),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  color: Colors.deepPurple[300],
                  height: 120,
                ),
              );
            }),
          )
        ],
      ),
    );
  }

}