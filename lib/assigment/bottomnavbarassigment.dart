import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/assigment/tabbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: bottomnavbarassigment(),debugShowCheckedModeBanner: false,));
}
class  bottomnavbarassigment extends StatefulWidget{
  @override
  State<bottomnavbarassigment> createState() => _bottomnavbarassigmentState();
}

class _bottomnavbarassigmentState extends State<bottomnavbarassigment> {
  var screen=[
    Text('Home'),
    tabbarassigmnt(),
    Text('Cart'),
    Text('Account')
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {

  return Scaffold(
    // appBar: AppBar(title: Text(''),backgroundColor: Colors.blue,

    // ),
    bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,backgroundColor: Colors.white,selectedItemColor:Colors.blue,unselectedItemColor: Colors.black,
        currentIndex: index,
        onTap: (tapmenu){
      setState(() {
        index=tapmenu;
      });
        },items: [
      BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home),label: 'home'),
      BottomNavigationBarItem(icon: Icon(Icons.lunch_dining),label: 'Lunch'),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp),label: 'Account'),
    ],),
    body: screen[index],
  );
  }
}