import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: bottomnavigation(),));
}
class bottomnavigation extends StatefulWidget{
  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  var screen =[
    Text('home'),
    Text('Category'),
    Text("Notification"),
    Text('Acoount'),
    Text('Cart')
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:  AppBar(title: Text('Flippkart'),),
    bottomNavigationBar: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
      child: BottomNavigationBar(type: BottomNavigationBarType.shifting,backgroundColor: Colors.grey,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: index,
        onTap: (tapindex){
        setState(() {
          index=tapindex;
        });
        },
       items:[

        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,),label: 'Home',backgroundColor: Colors.grey),
        BottomNavigationBarItem(icon: Icon(Icons.category_outlined,color: Colors.black),label: 'Category'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined,color: Colors.black),label: 'Notification'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,color: Colors.black),label: 'Account'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.black),label: 'Cart')
      ],),
    ),
    body: Center(child: screen[index]),
  );
  }
}