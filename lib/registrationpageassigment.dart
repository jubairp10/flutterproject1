import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class registrationpage extends StatelessWidget{
  bool pass=true;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
     child:  Form(
       child: Column(
         children: [
           Text('Registration'),
         Padding(
           padding:  EdgeInsets.only(top: 20,bottom: 20,left: 40,right: 40),
           child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Icons.person),hintText: 'Firstname',labelText: 'Firstname',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
         ),
           Padding(
             padding:  EdgeInsets.only(top: 20,bottom: 20,left: 40,right: 40),
             child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Icons.person),hintText: 'Secondname',labelText: 'Secondname',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
           ),
           Padding(

             padding:  EdgeInsets.only(top: 20,bottom: 20,left: 40,right: 40),
             child: TextFormField(decoration: InputDecoration(prefixIcon:Icon(Icons.email_outlined),hintText: 'e-mail',labelText: 'E-mail',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 20,bottom: 20,left: 40,right: 40),
             child: TextFormField(decoration: InputDecoration(prefixIcon: Icon(Icons.phone),hintText: 'Phone Number',labelText: 'Mob',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
           ),
           ElevatedButton(onPressed: (){}, child: Text('REGISTER'))
         ],
       ),
     ),
    ),
  );
  }

}