import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridextend(),));
}
class gridextend extends StatelessWidget{
  var icon=[Icons.add,Icons.abc,Icons.account_balance_wallet_rounded,Icons.dangerous,Icons.pages];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 50,children:
        List.generate(5, (index){
          return Card(
            child: Column(
              children: [
                Icon(icon[index])
              ],
            ),
          );
        })
      ),
    );
  }

}