import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listseparater.dart';
void main(){
  runApp(MaterialApp(home: popupmenu(),debugShowCheckedModeBanner: false,));
}
class popupmenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(
       appBar: AppBar(title:Text('popup',style: TextStyle(color: Colors.teal),),backgroundColor: Colors.grey,
       actions: [
         PopupMenuButton(itemBuilder: (context){
         return[
           PopupMenuItem(child: Text('Settings',style: TextStyle(fontFamily: 'assets/fonts/Genos/static/Genos-Black.ttf'),)),
     PopupMenuItem(child: Text("invite")),
     PopupMenuItem(child: Text('Logout'))
         ] ;

     })
         ],
       bottom: TabBar(indicatorColor: Colors.orange,labelColor: Colors.black45,unselectedLabelColor: Colors.blueGrey,tabs:
       [Tab(icon:Icon(Icons.camera_alt),child: Text('Camera',style: TextStyle(fontFamily: 'assets/fonts/Genos/static/Genos-ExtraBoldItalic.ttf'),),),
         Tab(child: Text('Chat'),),
         Tab(child: Text('Status'),),
         Tab(child: Text('Contact'),)
       ],),),
 body: TabBarView(children: [
   listseparater(),
 ],),
     ),
   );
  }

}