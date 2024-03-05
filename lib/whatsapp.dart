import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
class whatsapp extends StatefulWidget{
  @override
  State<whatsapp> createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  var title=['Kriss Benwant','Rezi markow','Gustav lemolo','Bob ryder','ken Simada','emma walkins','gilbert hamminway','Bella hammers'];

  var subtitle=['Good to know','it sbeen a while','Hey where are you','it\'s over!','Your Welcome','i am going out','Just attach the image and send it','The ui is Sexy'];

  var time=['Today','Today','Sunday','28 Jan','24 jan','19 Jan','12 Jan','5 Jan'];
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 4,
      child: Scaffold(
body: CustomScrollView(
  slivers: [
      SliverAppBar(
        backgroundColor: Colors.teal,
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
        ]
  // ,bottom:TabBar(indicatorColor: Colors.teal,labelColor: Colors.teal,unselectedLabelColor: Colors.grey,tabs: [
      //     Tab(icon: FaIcon(FontAwesomeIcons.peopleGroup),),
      //   Tab(child: Text('Chats'),),
      //   Tab(child: Text('Updates'),),
      //   Tab(child: Text('Calls'),)
      // ],) ,
      ),
    SliverList(delegate: SliverChildBuilderDelegate((context,index){
      return ExpansionTile(title: Text('${title[index]}'),
        leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
        ),
        subtitle: Text('${subtitle[index]}'),
        trailing: Text('${time[index]}'),
        children: [
          ListTile(title:Text('Last seen:'),)
        ],);
    },childCount: 8))
  ],


),

      ),
    );
  }
}