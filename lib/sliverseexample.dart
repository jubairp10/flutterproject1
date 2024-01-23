import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: sliversexample(),debugShowCheckedModeBanner: false,));
}
class sliversexample extends StatelessWidget{
  var color=[100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.brown,
            floating: true,
            pinned: true,
            title: Text('Kindacode.com'),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_rounded))
            ],
            bottom: AppBar(backgroundColor:Colors.brown ,elevation: 0,
            title: Container(
              height: 30,
              width: double.infinity,
              color: Colors.white,
              child: TextField(decoration: InputDecoration(suffixIcon: Icon(Icons.camera_alt_outlined),prefixIcon: Icon(Icons.search_outlined)
                  ,hintText: 'Search for something'
              ),),
            ),),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
              (context,index){
                return Column(
                  children: [
                    Center(
                      child: Container(
                        height: 500,
                        width: double.infinity,
                        color: Colors.white,
                        child: Center(child: Text('This is an Awesome shopping platform')),

                      ),
                    ),
                    Container(
                      height: 600,
                      width: double.infinity,
                      color: Colors.red,

                    )
                  ],
                );
              },childCount: 1,
          ))
        ],
      ),
    );
  }

}