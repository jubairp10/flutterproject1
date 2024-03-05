import 'package:animated_float_action_button/animated_floating_action_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tchats extends StatefulWidget{
 

  @override
  State<tchats> createState() => _tchatsState();
}

class _tchatsState extends State<tchats> {
  final GlobalKey<AnimatedFloatingActionButtonState> fabKey = GlobalKey();

  var title=['Kriss Benwant','Rezi markow','Gustav lemolo','Bob ryder','ken Simada','emma walkins','gilbert hamminway','Bella hammers','Kriss Benwant','Rezi markow','Gustav lemolo','Bob ryder','ken Simada','emma walkins','gilbert hamminway','Bella hammers'];

  var subtitle=['Good to know','it sbeen a while','Hey where are you','it\'s over!','Your Welcome','i am going out','Just attach the image and send it','The ui is Sexy','Good to know','it sbeen a while','Hey where are you','it\'s over!','Your Welcome','i am going out','Just attach the image and send it','The ui is Sexy'];

  var time=['Today','Today','Sunday','28 Jan','24 jan','19 Jan','12 Jan','5 Jan','Today','Today','Sunday','28 Jan','24 jan','19 Jan','12 Jan','5 Jan'];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(children: [
       Container(height:60,child: ListTile(leading: CircleAvatar(child: Icon(Icons.save),),title: Text('Saved Message'),)),
       Divider(thickness: 10,color: Colors.grey,),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
       ExpansionTile(title: Text('Kriss Benwant'),
         leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),
         ),
         subtitle: Text('Good to know'),
         trailing: Text('19:50'),
         children: [
           ListTile(title:Text('Last seen:'),)
         ],),
    ]),
     floatingActionButton:  AnimatedFloatingActionButton(
         key: fabKey,
         fabButtons: <Widget>[
           newchat(),
           newgroup(),
           newchannel(),
           newsecretchat(),
         ],
         colorStartAnimation: Colors.blue,
         colorEndAnimation: Colors.red,
         animatedIconData: AnimatedIcons.arrow_menu //To principal button
     ),
   );
  }

  newchat() {
    return FloatActionButtonText(
      onPressed: (){
        fabKey.currentState?.animate();
      },
      icon: Icons.person,
      text: "New Chat",
      textLeft: -120,
    );

  }

  newgroup() {
    return FloatActionButtonText(
      onPressed: (){
        fabKey.currentState?.animate();
      },
      icon:CupertinoIcons.person_2_alt,
      textLeft: -130,
      text: "New Group",
    );
  }

  newchannel() {
    return FloatActionButtonText(
      onPressed: (){
        fabKey.currentState?.animate();
      },
      icon: Icons.group_add,
      textLeft: -140,
      text: "New Channel",
    );
  }

  newsecretchat() {
    return FloatActionButtonText(
      onPressed: (){
        fabKey.currentState?.animate();
      },
      icon: Icons.lock,
      textLeft: -150,
      text: "New ScretChat",
    );
  }
}