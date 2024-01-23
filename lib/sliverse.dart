import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: slivers(),debugShowCheckedModeBanner: false,));
}
class slivers extends StatelessWidget {
  var title=['Jubi_123','__Skoda__','Mi__dun_','Jubi_123','__Skoda__','Mi__dun_','Jubi_123','__Skoda__','Mi__dun_','s'];
  var subtitle=['jubair','skoda','midhun manual','s','jubair','skoda','midhun manual','midhun manual','s','k'];
  var color=[100,50,25,10,10,10,10,10,10,10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.purpleAccent,
          floating: true,
          pinned: true,
          title: Text('Instagram'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.chat))
          ],
          bottom: AppBar(
            backgroundColor: Colors.purpleAccent,
            elevation: 0,
            title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search_outlined),
                      suffixIcon: Icon(Icons.camera_alt_outlined)),
                )),
          ),
        ),
       SliverList(delegate: SliverChildBuilderDelegate((context,index){
         return Card(color: Colors.grey[color[index]],
           child: ListTile(
             leading: Icon(Icons.person),
             title: Text('${title[index]}'),
             subtitle: Text('${subtitle[index]}'),
           ),
         );
       }
       ,childCount: title.length))
      ],
    ));
  }
}
