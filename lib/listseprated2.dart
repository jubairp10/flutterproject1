import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(home: listscroll(),debugShowCheckedModeBanner: false,));
}
class listscroll extends StatelessWidget{
  var title=['A','B','C','D','E','F','G','H','I','J','K','L','M'];
  var color=[Colors.blueGrey,Colors.blueGrey,Colors.blueGrey,Colors.blueGrey,Colors.blueGrey,Colors.blueGrey,Colors.blueGrey,Colors.blueGrey,Colors.blueGrey,Colors.blueGrey,Colors.blueGrey,Colors.blueGrey,Colors.blueGrey,];
  var num=['Separater 1','Separater 2','Separater 3','Separater 4','Separater 5','Separater 6','Separater 7','Separater 8','Separater 9','Separater 10','Separater 11','Separater 12','Separater 13',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView.Seprated()'),backgroundColor: Colors.blueAccent,),
      body: ListView.separated(itemBuilder:(context,index){
        return Card(color:color[index],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
         child: ListTile(
           title: Text('${title[index]}'),

         ),
        );
      }, separatorBuilder: (context,index){
       return Card(
         child: Text('${num[index]}') ,color: Colors.grey,

       );
      }, itemCount: 13),
    );
  }

}