import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listeg(),));
}
class listeg extends  StatelessWidget{
  var image=["assets/icons/House-icon.png","assets/icons/House-icon.png","assets/icons/House-icon.png","assets/icons/House-icon.png"];
  var title=["TUDO one","TUDO two","TUDO seven","TUDO eight"];
  var subtitle=["ASD12345","asdf1234","ASB1234","ASDF1321"];
  var address=["1600 Amphitheatre Pkwy Mountain View,CA\n97B52,USA","1600 Amphitheatre Pkwy Mountain View,CA\n97B52,USA","1600 Amphitheatre Pkwy Mountain View,CA\n97B52,USA","1600 Amphitheatre Pkwy Mountain View,CA\n97B52,USA"];
  var icon=['assets/icons/location2.png','assets/icons/location2.png','assets/icons/location2.png','assets/icons/location2.png',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(100,100))),
            backgroundColor: Colors.yellowAccent,
            floating: false,
            pinned: false,
            title: Text('BSP Listview'),
            centerTitle: true,
            leading: Icon(Icons.arrow_back_ios_new),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.menu))
            ],

          ),
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  ListTile(
                    leading:Image(image: AssetImage('${image[index]}'),) ,
                    title: Text('${title[index]}'),
                    subtitle: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 400),
                          child: Text('${subtitle[index]}'),
                        ),
                        Row(
                          children: [
                            Padding(padding: const EdgeInsets.only(left: 20,top: 10),
                              child: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                                child: Row(
                                  children: [
                                    Icon(Icons.star_border),
                                    Padding(padding: const EdgeInsets.only(left: 20),
                                      child: Text("0.00"),)
                                  ],
                                ),),),
                            Padding(
                              padding: const EdgeInsets.only(top:40,left: 20,bottom: 38),
                              child: ElevatedButton(onPressed: (){}, style:ElevatedButton.styleFrom(backgroundColor: Colors.orange),child:
                              Row(
                                children: [
                                  Icon(Icons.bike_scooter),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text('0.00km'),
                                  )
                                ],
                              )),
                            )
                          ],
                        )
                      ],
                    ),

                  ),




              ListTile(
                    leading:Icon(Icons.location_on) ,
                    title: Text('Address'),
                    subtitle: Text('${address[index]}'),

                  ),

                ],
              ),
            );
          },childCount: 4))
        ],
      )
    );
  }

}