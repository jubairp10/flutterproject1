import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: recipiebook(),debugShowCheckedModeBanner: false,
  ));
}

class recipiebook extends StatelessWidget {
  var title = [
    'Pasta',
    'Maggi',
    'Cake',
    'Pancake',
    'Pizza',
    'Burgers',
    'fries'
  ];
  var time = [
    '30 mins',
    '2 mins',
    '45 mins',
    '10 mins',
    '60 mins',
    '45 mins',
    '30 mins'
  ];
  var image = [
    'assets/icons/pasta.png',
    'assets/icons/noodles.png',
    'assets/icons/cake.png',
    'assets/icons/pancake.png',
    "assets/icons/pizza.png",
    'assets/icons/burger.png',
    'assets/icons/frenchfries.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipie Book'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('${image[index]}'),
              ),
              title: Text(
                '${title[index]}',
                style: TextStyle(color: Colors.blueAccent),
              ),
              trailing: Text(
                '${time[index]}',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          );
        },
        itemCount: title.length,
      ),
    );
  }
}
