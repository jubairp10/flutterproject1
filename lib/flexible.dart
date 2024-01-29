import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: flexible(),));
}
class flexible extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,

                child: Container(

                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                      borderRadius: BorderRadius.circular(20)
                  ),),
              ),
              Flexible(
                flex: 3,

                child: Container(

                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
  }

}