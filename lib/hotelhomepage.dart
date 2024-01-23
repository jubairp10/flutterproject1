import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main(){

  runApp(MaterialApp(home: hotelui(),debugShowCheckedModeBanner: false,));
}
final List rooms=[
  {
    'image':'assets/image/download (2).jpegassets/image/download (2).jpeg',
    'title':'Awesome room near kakkand'
  },
  {
    'image':'assets/image/download (3).jpeg',
    'title':'Peaceful room'
  },{
    'image':'assets/image/download (4).jpeg',
    'title':'Beutiful room'
  }


];
class hotelui extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [

         SliverAppBar(
           leading: Icon(Icons.menu),
       expandedHeight: 180.0,
           backgroundColor: Colors.blue,
           floating: true,
           
           actions: [
             IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outlined)),
           ],
           flexibleSpace: ListView(
             children: [
               SizedBox(height: 70,),
               Text('Type your Location',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),),
               Container(
                 margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                 padding: EdgeInsets.all(5),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(30),
                 ),
                 child: TextField(
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: 'Kakkanad,Kochi',
                     prefixIcon: IconButton(onPressed: () {  }, icon: Icon(Icons.search_outlined),)
                     
                   ),
                 ),
               )
               
             ],
           ),
           
         ),
       SliverToBoxAdapter(child: SizedBox(height: 10,),),
         SliverToBoxAdapter(
           child: buildCategories(),
         ),
         SliverList(delegate: SliverChildBuilderDelegate((context,index){
           return buildRooms()
         }))
       ],
     ),
   );
  }

 Widget buildCategories() {
   return Container(height: 100,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 25,),
         Category(backgroundcolor:Colors.pinkAccent, icon:Icons.hotel,
          title: 'Hotel',),
     SizedBox(width: 30,),
    Category( backgroundcolor:Colors.indigo,icon:Icons.restaurant,
     title: 'Resturants'),
          SizedBox(width:30 ,),
        Category(  backgroundcolor:Colors.orange,icon:Icons.local_cafe,
          title: 'Cafe')
        ],
      ),
    );
  }

}

Widget buildRooms(BuildContext context,int index)
     {
  var room= rooms[index % rooms.length];
  return Container(
    margin: EdgeInsets.all(20),
    child: ClipRRect(borderRadius: BorderRadius.circular(5),
      child: Container(
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Stack(
                children: <Widget>[
                  Image.asset(room['image']),
                  Icon(Icons.star,color: Colors.grey.shade700,size: 20,),
                  Positioned(child: Icon(Icons.star,color: Colors.white,size: 24,)),
                Positioned(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Text('\$40'),
                  ),
                )],
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
class Category extends StatelessWidget{
  final IconData icon;
  final String title;
  final  Color? backgroundcolor;
  
  const Category({
    Key? key,
    required this.icon, required this.title, this.backgroundcolor,
    
  }): super (key: key);
  @override
  Widget build(BuildContext context) {
  return InkWell(
    onTap: (){},
    child: Container(
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      width: 100,
      child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          Icon(icon,color: Colors.white,),
          SizedBox(height: 5,),
          Text(title,style: TextStyle(color: Colors.white),)
        ],
      ),
    ),
  );
  }
  
}