import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: chatpage(),debugShowCheckedModeBanner: false,));
}
class chatpage extends StatefulWidget{
  @override
  State<chatpage> createState() => _chatpageState();
}

class _chatpageState extends State<chatpage> {
  var title=['Kriss Benwant','Rezi markow','Gustav lemolo','Bob ryder','ken Simada','emma walkins','gilbert hamminway','Bella hammers'];

  var subtitle=['Good to know','it sbeen a while','Hey where are you','it\'s over!','Your Welcome','i am going out','Just attach the image and send it','The ui is Sexy'];

  var time=['Today','Today','Sunday','28 Jan','24 jan','19 Jan','12 Jan','5 Jan'];
  var screen=[
    chatpage(),
    Text('Channels'),
    Text('Profile')
  ];
  int cindex=2;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(backgroundColor: Colors.white,
        floating: true,
        title: Text('Conversations',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 50),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5,right: 5,bottom: 5),
            child: ClipRRect(borderRadius: BorderRadius.circular(30),
              child: ElevatedButton(onPressed: (){}, child:
              Row(
                children: [
                  Icon(Icons.add,color: Colors.pink,),
                  Text('Add New',style: TextStyle(color: Colors.black),)
                ],
              ),style: ElevatedButton.styleFrom(backgroundColor: Colors.pink[50],foregroundColor: Colors.black),),
            ),
          ),

        ],
          expandedHeight: 150,
          flexibleSpace: ListView(
            children: [
              SizedBox(height: 60,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                color: Colors.grey[100]),
                child: TextField(decoration: InputDecoration(hintText: 'Search...',
                prefixIcon:Icon (Icons.search_outlined),
                border: InputBorder.none),),
              )
            ],
          ),

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

    ),bottomNavigationBar:BottomNavigationBar(type: BottomNavigationBarType.fixed,backgroundColor: Colors.white, elevation:1,
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.red,
    currentIndex: cindex,
    onTap: (tapindex){
      setState(() {
        cindex=tapindex;
      });
    }
    ,items: [
      BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chats'),
      BottomNavigationBarItem(icon: Icon(Icons.catching_pokemon),label: 'Channel'),
      BottomNavigationBarItem(icon: Icon(Icons.account_box),label: 'Profile')
    ],) ,

  );

  }
}