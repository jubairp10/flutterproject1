import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){

  runApp(MaterialApp(home: gridcount(),));
}
class gridcount extends StatelessWidget{
  var icon=[Icons.add,Icons.abc,Icons.account_balance_wallet_rounded,Icons.dangerous,Icons.pages];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
      children: List.generate(5, (index){
        return Card(
          child: Column(

            children: [SizedBox(height: 100,),
             Center(child: Icon(icon[index])),
              Text('flutter')
            ],
          ),
        );
      }),),

    );
  }

}