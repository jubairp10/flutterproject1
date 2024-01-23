import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
runApp(MaterialApp(home: stagrred(),debugShowCheckedModeBanner: false,));
}
class stagrred extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body:SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children:  [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(color: Colors.lightGreen,child: Column(children: [
                Image(image: AssetImage('assets/icons/flutter-icon.png'),color: Colors.lightBlue,),
              Text('Flutter')],
              ),),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(child: Column(
                children: [
                  Image(image: AssetImage('assets/icons/cake.png'),height: 400,width: 200,),
                  Text('Cake')
                ],
              ),color: Colors.yellowAccent),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(child: Column(children: [
                Image(image: NetworkImage('assets/icons/noodles.png')),
                Text('Noodles')
              ],),color: Colors.blue,),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(child: Column(children: [
                Image(image: AssetImage('assets/icons/pancake.png')),
                Text('Pancake////')
              ],),color: Colors.purpleAccent,),

            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(child: Column(children: [
                Image(image: AssetImage('assets/icons/pizza.png')),
                Text('Pizza')
              ],),color: Colors.greenAccent,),

            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(child:Column(
                children: [
                  Image(image: AssetImage('assets/icons/burger.png')),
                  Text('Burger')
                ],
              ),color: Colors.greenAccent,),

            ),
          ],

  ),
      )
  );
  }

}