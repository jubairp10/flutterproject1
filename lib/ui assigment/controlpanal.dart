import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: controlpanal(),));
}
class controlpanal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:Stack(
       children: [
         Container(
           height: 500,
           width: double.infinity,
             color: Colors.brown[200],
           child: ListView.builder(itemCount: 1,itemBuilder: (context,index){

             return Column(verticalDirection: VerticalDirection.down,
               children: [
                 Row(
                   children: [
                     FaIcon(FontAwesomeIcons.list,color: Colors.white,),
                     SizedBox(width: 150,),
                     Text('Control Panel',style: TextStyle(color: Colors.white),),
                     SizedBox(width: 180,),
                     FaIcon(FontAwesomeIcons.bell,color: Colors.white,),
                   ],
                 ),
                   SizedBox(height: 30,),
                   Row(
                     children: [
                       SizedBox(width: 60,),
                       Column(
                         children: [
                           FaIcon(FontAwesomeIcons.thunderstorm,color: Colors.white,),
                           Text('Ligtining',style: TextStyle(color: Colors.white),)
                         ],
                       ),
                       SizedBox(width: 100,),
                       Column(
                         children: [
                           Text('19 *c',style: TextStyle(fontSize: 20,color: Colors.white),),
                           Text('Ligtining',style: TextStyle(color: Colors.white),)
                         ],
                       ),
                       SizedBox(width: 100,),
                       Column(
                         children: [
                           Text('25 *c',style: TextStyle(fontSize: 20,color: Colors.white),),
                           Text('Ligtining',style: TextStyle(color: Colors.white),)
                         ],
                       ),


                     ],
                   )
               ],
             );
           })
           ),

         Padding(
           padding: const EdgeInsets.only(top:120),
           child: ClipRRect(
             borderRadius: BorderRadius.circular(40),
             child: Container(color: Colors.white,
               child: Column(
                 children: [
                   Container(
                     margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                     height: 80,
                     padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                     decoration: BoxDecoration(
                       shape: BoxShape.rectangle,
                       borderRadius:BorderRadius.circular(30),
                       color: Colors.grey[300],
                     ),
                    child: Row(
                      children: [
                        SizedBox(width: 30,),
                        Icon(Icons.electrical_services,color: Colors.black),
                        Column(
                          children: [
                            SizedBox(height: 10,),
                            Text('29.5 Kwh',style: TextStyle(fontSize: 25,color: Colors.black),),
                            Text('Power usage Today',style: TextStyle(color: Colors.black),)
                          ],
                        ),
                        SizedBox(width: 40,),
                        FaIcon(FontAwesomeIcons.boltLightning,color: Colors.black,),
                        Column(
                          children: [
                            SizedBox(height: 10,),
                            Text('303 Kwh',style: TextStyle(fontSize: 25,color: Colors.black),textAlign: TextAlign.start,),
                            Text('Power usage this month',style: TextStyle(color: Colors.black),)
                          ],
                        ),
                      ],
                    ),
                   ),
                   Expanded(
                     flex: 2,
                     child: Container(
                       height: 400,
                       width: double.infinity,
                       decoration: BoxDecoration(
                         shape: BoxShape.rectangle,
                         borderRadius:BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                         color: Colors.grey[300],
                       ),
                     child: Column(
                       children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30,left: 10),
                              child: Text('Scenes',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                            ),
                            SizedBox(width: 380),
                            Padding(
                              padding: const EdgeInsets.only(top: 30,right: 10),
                              child: Icon(Icons.add,color: Colors.grey[500],),
                            )
                          ],
                        ),
                         SizedBox(height: 15,),
                         Row(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             Container(
                               height: 100,
                               width: 100,
                               decoration: BoxDecoration(
                                 shape: BoxShape.rectangle,
                                 borderRadius:BorderRadius.circular(30),
                                 color: Colors.brown[200],
                                 boxShadow: [
                                   BoxShadow(blurRadius: 10,)
                                 ]
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Icon(Icons.home),
                                   Text('Home')
                                 ],
                               ),
                             ),
                             SizedBox(width: 20,),
                             Container(
                               height: 100,
                               width: 100,
                               decoration: BoxDecoration(
                                 shape: BoxShape.rectangle,
                                 borderRadius:BorderRadius.circular(30),
                                 color: Colors.white,
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Icon(Icons.collections_bookmark_outlined),
                                   Text('Awey')
                                 ],
                               ),
                             ),
               SizedBox(width: 20,)
                             ,Container(
                               height: 100,
                               width: 100,
                               decoration: BoxDecoration(
                                 shape: BoxShape.rectangle,
                                 borderRadius:BorderRadius.circular(30),
                                 color: Colors.white,
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   FaIcon(FontAwesomeIcons.moon),
                                   Text('Sleep')
                                 ],
                               ),
                             ),
                             SizedBox(width: 20,),
                             Container(
                               height: 100,
                               width: 100,
                               decoration: BoxDecoration(
                                 shape: BoxShape.rectangle,
                                 borderRadius:BorderRadius.circular(30),
                                 color: Colors.white,
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Icon(Icons.alarm_on_sharp),
                                   Text('Get up')
                                 ],
                               ),
                             )
                           ],
                         ),
                         Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 10,left: 10),
                               child: Text('Rooms',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                             ),
                             SizedBox(width: 380),
                             Padding(
                               padding: const EdgeInsets.only(top: 10,right: 10),
                               child: Icon(Icons.add,color: Colors.grey[500],),
                             )
                           ],
                         ),
                         SizedBox(height: 20,),
                         Row(mainAxisSize: MainAxisSize.min,
                           children: [
                             Container(
                               height: 260,
                               width: 200,
                               decoration: BoxDecoration(
                                 shape: BoxShape.rectangle,
                                 borderRadius:BorderRadius.circular(30),
                                 color: Colors.white,
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Image(image: AssetImage('assets/image/sofa2.jpeg'),height: 100,width: 100,),
                                   Text('Living Room',style: TextStyle(fontSize: 20),),
                                   Text('4 devices')
                                 ],
                               ),
                             ),
                             SizedBox(width: 20,),
                             Container(
                               height: 260,
                               width: 200,
                               decoration: BoxDecoration(
                                 shape: BoxShape.rectangle,
                                 borderRadius:BorderRadius.circular(30),
                                 color: Colors.white,
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Image(image: AssetImage('assets/image/bedroom.jpeg'),height: 100,width: 100,),
                                   Text('Bed Room',style: TextStyle(fontSize: 20),),
                                   Text('2 devices')
                                 ],
                               ),
                             ),
                           ],
                         )
                       ],
                     ),
                     ),
                   )
                 ],
               ),

             ),
           ),
         )
       ],
     )
   );
  }

}