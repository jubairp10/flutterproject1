import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: drawer(),));
}
class drawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('SFC'),),
     drawer: Drawer(
       child: ListView(
         children: [
       UserAccountsDrawerHeader(decoration:BoxDecoration(image: DecorationImage(image: AssetImage('assets/icons/bg.jpg'),fit: BoxFit.fill)),
         accountName: Text('JUBI',style: TextStyle(color: Colors.blue),), accountEmail: Text('jubijubai@gmail.com',style: TextStyle(color: Colors.blue),),
       currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/icons/sfc.jpg'),
       ),
       otherAccountsPictures: [
         CircleAvatar(backgroundImage: AssetImage('assets/icons/flutter-icon.png'),)
       ],),
           ExpansionTile(title: Text('jubi'),
           subtitle: TextButton(onPressed: () {  },child: Text('Set emoji Status'),),),
           ListTile(
             leading: Icon(Icons.home),
             title: Text('Home'),
           ),
           ListTile(
             leading: Icon(Icons.person),
             title: Text('Account'),
           ),   ListTile(
             leading: Icon(Icons.update),
             title: Text('Update'),
           ),   ListTile(
             leading: Icon(Icons.logout),
             title: Text('Logout'),
           ),
         ],
       ),
     ),
   );
  }

}