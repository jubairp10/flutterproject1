import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listview(),debugShowCheckedModeBanner: false,));
}

class listview extends StatelessWidget{
  var name=["TUDO one","TUDO two","TUDO seven","TUDO eight"];
  var title=["ASD12345","asdf1234","ASB1234","ASDF1321"];
  var image=["assets/icons/House-icon.png","assets/icons/House-icon.png","assets/icons/House-icon.png","assets/icons/House-icon.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange,
        title: Center(child: Text("BSP List View",style: TextStyle(color: Colors.black),)),
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        actions: [
          Icon(Icons.notes,color: Colors.black,)
        ],),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(padding: const EdgeInsets.only(left: 10),
                    child: Image(image: AssetImage(image[index]),height: 80,width: 80,),),
                  Column(
                    children: [
                      Text(name[index]),
                      Text(title[index]),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                          child: Row(
                            children: [
                              Icon(Icons.star),
                              Padding(padding: const EdgeInsets.only(left: 20),
                                child: Text("0.0"),)
                            ],
                          ),),
                      )
                    ],
                  ),
                  Padding(padding: const EdgeInsets.only(top: 40,left: 20),
                    child: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                      child: Row(
                        children: [
                          Icon(Icons.bike_scooter),
                          Padding(padding: const EdgeInsets.only(left: 20),
                            child: Text("0.00km"),)
                        ],
                      ),),)
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 30,width: 30,color: Colors.yellow[200],
                    child: Icon(Icons.map,color: Colors.orange[500],),
                  ),
                  Column(
                    children: [
                      Text("address"),
                      Column(
                        children: [
                          Text("1600 Amphitheatre Pkwy Mountain View,CA"),
                          Text("97B52,USA")
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }, separatorBuilder: (context,index){
        return Divider(
          thickness: 0,
          color: Colors.grey,
        );
      }, itemCount: 4),
    );
  }

}