import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: tabbarassigmnt(),));
// }
class tabbarassigmnt extends StatelessWidget{
  var count=['1','1','1','1','1','1','1','1'];
  var day=['Tuersday','Tuersday','Tuersday','Tuersday','Tuersday','Tuersday','Tuersday','Tuersday',];
  var color=[Colors.green,Colors.red,Colors.blue,Colors.purple,Colors.indigo,Colors.orange,Colors.pinkAccent,Colors.teal];
  var food=['Burger','Burger','Burger','Burger','Burger','Burger','Burger','Burger',];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
appBar:AppBar(title: Text(''),
actions: [

],
bottom: TabBar(indicatorColor: Colors.white,labelColor: Colors.white,unselectedLabelColor: Colors.grey,tabs: [
  Tab(child: Text(''),),
  Tab(child: Text('Lunches'),),
  Tab(child: Text('Cart'),),
  Tab(child: Text(''),)
],),),
        body: ListView.builder(itemBuilder: (context,index){
          return Row(
            children: [
              Container(color: color[index],height: 60,
                width: 90,

                child: Column(
                  children: [
                    Center(child: Padding(
                      padding:  EdgeInsets.only(top: 15),
                      child: Text('${count[index]}'),
                    )),
                    Center(child: Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text('${day[index]}'),
                    ))
                  ],
                ),
              ),
              Container(
                child: Text('${food[index]}'),
              )
            ],
          );
        },itemCount: 8,),
      ),
    );
  }

}