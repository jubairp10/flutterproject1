import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  final data;
  const Home1({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name  = data[0]['name'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
      ),
      body: Center(

        child: ListView.builder(itemBuilder: (context,index){
          return SingleChildScrollView(
            child: Column(
              children: [

              ],
            ),
          );
        }),
      ),
    );
  }
}