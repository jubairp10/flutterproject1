import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridcustom(),));
}
class gridcustom extends StatelessWidget{
  var image=['assets/icons/burger.png','assets/icons/cake.png','assets/icons/frenchfries.png','assets/icons/noodles.png'];
  var regno=['1','2','3','4'];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), childrenDelegate: SliverChildBuilderDelegate((context,index){
       return Card(
         child: Column(
           children: [
             CircleAvatar(backgroundImage: AssetImage(image[index]),),
             Text(regno[index])
           ],
         ),
       );
     },childCount: 4)),
   );
  }
  
}