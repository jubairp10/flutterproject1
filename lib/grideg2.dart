import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){

  runApp(MaterialApp(home: grideg(),));
}
class grideg extends StatelessWidget{
  var image=['assets/icons/burger.png','assets/icons/cake.png','assets/icons/frenchfries.png','assets/icons/noodles.png'];
  var regno=['1.','2.','3.','4.'];
  var price=['50','50','50','50'];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.custom(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:200), childrenDelegate: SliverChildListDelegate(
       List.generate(4, (index){
         return Card(
           child: Column(
             children: [
               Image(image: AssetImage(image[index])),
               Text('${regno[index]}${price[index]}',style: TextStyle(color: Colors.black),)
             ],
           ),
         );
       })
     )),
   );
  }

}