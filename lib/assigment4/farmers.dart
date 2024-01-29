import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'farmersfresh.dart';
void main(){
  runApp(MaterialApp(home: farmhome(),));
}
class farmhome extends StatefulWidget{
  @override
  State<farmhome> createState() => _farmhomeState();
}

class _farmhomeState extends State<farmhome> {
  var screen=[
    farmhome(),
    farmhome(),
    farmhome()
  ];
  int index=0;
  get callbackFunction => null;

  var image=['assets/image/tomato.jpg','assets/image/pinapple.jpg','assets/image/cherry.jpg'];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         Container(

           child: Row(
             children: [

               Padding(
                   padding: const EdgeInsets.only(right: 30,left: 30,bottom: 20,top: 10),
                   child: Container(
                     margin: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                     width: 100,
                     height: 20,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),
                       border: Border.all(color: Colors.tealAccent),

                     ),
                     child: Center(child: Text('VEGTABLES')),
                   )),
               Padding(
                   padding: const EdgeInsets.only(right: 20,left: 10,bottom: 20,top: 10),
                   child: Container(
                     margin: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                     width: 100,
                     height: 20,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),
                       border: Border.all(color: Colors.tealAccent),

                     ),
                     child: Center(child: Text('FRUITS')),
                   )),
               Padding(
                   padding: const EdgeInsets.only(right: 20,left: 10,bottom: 20,top: 10),
                   child: Container(
                     margin: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                     width: 100,
                     height: 20,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),
                       border: Border.all(color: Colors.tealAccent),

                     ),
                     child: Center(child: Text('EXOTIC CUTS')),
                   )),
             ],
           ),
         ),
         CarouselSlider(items: [
           ClipRRect(borderRadius: BorderRadius.circular(20),child: Image(image: AssetImage('assets/image/fullscreen.jpg'),)),
           ClipRRect(borderRadius: BorderRadius.circular(20),child: Image(image: AssetImage('assets/image/fullscreen.jpg'),)),
           ClipRRect(borderRadius: BorderRadius.circular(20),child: Image(image: AssetImage('assets/image/fullscreen.jpg'),)),
           ClipRRect(borderRadius: BorderRadius.circular(20),child: Image(image: AssetImage('assets/image/fullscreen.jpg'),)),
         ], options:  CarouselOptions(
           height: 150,
           aspectRatio: 16/9,
           viewportFraction: 0.8,
           initialPage: 0,
           enableInfiniteScroll: true,
           reverse: false,
           autoPlay: true,
           autoPlayInterval: Duration(seconds: 3),
           autoPlayAnimationDuration: Duration(milliseconds: 800),
           autoPlayCurve: Curves.fastOutSlowIn,
           enlargeCenterPage: true,
           enlargeFactor: 0.3,
           onPageChanged: callbackFunction,
           scrollDirection: Axis.horizontal,
         ),),
         Container(
           height: 80,
           width: 500,
           margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
           decoration: BoxDecoration(shape: BoxShape
           .rectangle,
           color: Colors.white,
           border: Border.all(color: Colors.black)),
           child: Column(
             children: [
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left:60,bottom: 20,top: 10),
                     child: Icon(Icons.timer,color: Colors.black,size: 25,),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:125,bottom: 20,top: 10),
                     child: Icon(Icons.perm_contact_cal
                       ,color: Colors.black,size: 25,),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:125,bottom: 20,top: 10),
                     child: Icon(Icons.home_work_rounded,color: Colors.black,size: 25,),
                   ),

                 ],
               ),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 25,bottom: 5),
                     child: Text('30 minuets policy'),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 51,bottom: 5),
                     child: Text('Traceability'),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 60,bottom: 5),
                     child: Text('Local Sorrounding'),
                   ),
                 ],
               )
             ],
           ),
         ),
         Container(
           height: 40,
           width: double.infinity,
           child: Text('  Shop by Category',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:
           FontWeight.w800),),
         ),
        Container(
          child: Row(
            children: [
              SizedBox(width: 10,),
            Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow:  [
                BoxShadow(
                  blurRadius: 25.0,
                ),
              ],
              image: DecorationImage(image: AssetImage('assets/image/tomato.jpg'),fit: BoxFit.cover),
            ),),
              SizedBox(width: 10,),
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:  [
                    BoxShadow(
                      blurRadius: 25.0,
                    ),
                  ],
                  image: DecorationImage(image: AssetImage('assets/image/pinapple.jpg'),fit: BoxFit.cover),
                ),),
              SizedBox(width: 10,),
              Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:  [
                    BoxShadow(
                      blurRadius: 25.0,
                    ),
                  ],
                  image: DecorationImage(image: AssetImage('assets/image/tomato.jpg'),fit: BoxFit.cover),
                ),),
            ],
          ),
        ),

      ],
     ),
     bottomNavigationBar: BottomNavigationBar(
     unselectedItemColor: Colors.green,
         type: BottomNavigationBarType.fixed,
         backgroundColor: Colors.white,
         selectedItemColor:Colors.green,
         currentIndex: index,
         onTap: (tapindex){
       setState(() {
         index=tapindex;
       });
         },
         items: [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
       BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
       BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account')
     ],),
   );
  }
}