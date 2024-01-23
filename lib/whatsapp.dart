import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/callhistory.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(DevicePreview(
      isToolbarVisible: true,
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: whatsapp(),
      )));
}
class whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 4,
      child: Scaffold(
body: CustomScrollView(
  slivers: [
      SliverAppBar(
        backgroundColor: Colors.black54,
        floating: true,
        pinned: true,
        title: Text('WhatsApp',style: TextStyle(color: Colors.white),),
        actions: [

          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.camera)),
          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.searchengin)),
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text('New Group')),
              PopupMenuItem(child: Text('New broadcast')),
              PopupMenuItem(child: Text('Linked devices')),
              PopupMenuItem(child: Text('Payments')),
              PopupMenuItem(child: Text('Settings')),
            ];
          }),
        ],bottom:TabBar(indicatorColor: Colors.teal,labelColor: Colors.teal,unselectedLabelColor: Colors.grey,tabs: [
          Tab(icon: FaIcon(FontAwesomeIcons.peopleGroup),),
        Tab(child: Text('Chats'),),
        Tab(child: Text('Updates'),),
        Tab(child: Text('Calls'),)
      ],) ,
      ),

  ],


),

      ),
    );
  }

}