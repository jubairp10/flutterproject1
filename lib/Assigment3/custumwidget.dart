import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profiletile extends StatelessWidget{
  profiletile({
  Key? key,
  required this.txt,
  required this.icon,


}): super(key: key);
  final String txt;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
   return  Container(
     margin: EdgeInsets.only(top: 10),
     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey[300]),
     child: ListTile(
       title: Text
         (txt,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
       leading: icon,
       trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
     ),
   );

  }


}
class profiletiles extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 30,right: 30,bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              profiletile(txt: 'Privacy', icon: Icon(Icons.privacy_tip,color: Colors.black,)),
              profiletile(txt: 'Purchace History', icon: Icon(Icons.history,color: Colors.black,)),profiletile(txt: 'Help & Support', icon: Icon(Icons.help_outline_outlined,color: Colors.black,)),
              profiletile(txt: 'Settings', icon: Icon(Icons.privacy_tip,color: Colors.black,)),
              profiletile(txt: 'Add friends', icon: Icon(Icons.person_add,color: Colors.black,)),
            ],
          ),
        ),
      ),
    );
  }

}