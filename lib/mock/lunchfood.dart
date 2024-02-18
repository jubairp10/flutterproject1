import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: lunchfood(),));
}
class lunchfood extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:  SingleChildScrollView(
       child: Stack(
         children: [
       Padding(
       padding: const EdgeInsets.only(top:370),
       child: Container(
         height: 280,
         width: double.infinity,
         color: Colors.white,)),
       Padding(
       padding: const EdgeInsets.only(top:370),
       child: Container(
         height: 280,
         width: double.infinity,
         color: Colors.white,
         child: Stack(
           children:[
             Positioned(top: 30,
             child: Row(mainAxisSize: MainAxisSize.min,

               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   margin: EdgeInsets.symmetric(
                       vertical: 8, horizontal: 8),
                   width: 100,
                   height: 30,
                   decoration: BoxDecoration(
                     color: Colors.orange,
                     borderRadius: BorderRadius.circular(20),


                   ),
                   child: Center(child: Text('OVERVIEW',style: TextStyle(color: Colors.white),)),
                 ),
                 SizedBox(width:60,),
                 Container(
                   margin: EdgeInsets.symmetric(
                       vertical: 8, horizontal: 8),
                   width: 100,
                   height: 30,
                   decoration: BoxDecoration(
                     color: Colors.grey[400],
                     borderRadius: BorderRadius.circular(20),


                   ),
                   child: Center(child: Text('REVIEW',style: TextStyle(color: Colors.black))),
                 ),
                 SizedBox(width: 80,),
                 Container(
                   margin: EdgeInsets.symmetric(
                       vertical: 8, horizontal: 8),
                   width: 100,
                   height: 30,
                   decoration: BoxDecoration(
                     color: Colors.grey[400],
                     borderRadius: BorderRadius.circular(20),


                   ),
                   child: Center(child: Text('TIME',style: TextStyle(color: Colors.black))),
                 ),
               ],
             ),
           ),
         Positioned(top:80,left:5,child:Text('Food Information',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)),
             Positioned(top:120,left:5,child:Text('However, while quats are generally considered safe when used according to the manufacturer\'s instructions,\n there are some concerns about their potential health and environmental impacts.\n Some studies have suggested that exposure to high levels of quats may be linked to respiratory issues,\n skin irritation, and other health problems.',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.left,)),
          Positioned(top: 180,left: 10,
            child: Row(
              children: [
                Container(
                  height: 90,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.brown,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                      ),
                    ],
                    image: DecorationImage(image: AssetImage(
                        'assets/icons/burger.png')),
                  ),),
                SizedBox(width: 10,),
                Container(
                  height: 90,
                  width: 110,
                  decoration: BoxDecoration(color: Colors.indigo,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                      ),
                    ],
                    image: DecorationImage(image: AssetImage(
                        'assets/icons/cake.png'), ),
                  ),),
                SizedBox(width: 10,),
                Container(
                  height: 90,
                  width: 110,
                  decoration: BoxDecoration(color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                      ),
                    ],
                    image: DecorationImage(image: AssetImage(
                        'assets/icons/frenchfries.png'), ),
                  ),),
                SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                      ),
                    ],
                    image: DecorationImage(image: AssetImage(
                        'assets/icons/pancake.png'),),
                  ),),
                SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                      ),
                    ],
                    image: DecorationImage(image: AssetImage(
                        'assets/icons/pasta.png'), ),
                  ),),

              ],
            ),
          )
           ]
         ),
       )
       ),
           Padding(
               padding: const EdgeInsets.only(bottom: 0,top: 650),
               child: Container(
                 height: 150,
                 width: double.infinity,
                 decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),color: Colors.white,boxShadow: [
                   BoxShadow(
                     blurRadius: 25.0,
                     color: Colors.black
                   ),
                 ],),
                 child: Stack(
                   children: [
                     Positioned(top: 20,left: 10,
                       child: Row(
                       children:[Container(
                         height:30,
                         width:30,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Colors.black),

                         ),
                         child: Icon(CupertinoIcons.add,color: Colors.black,),
                       ),
                         SizedBox(width: 5,),
                       Container(
                         height:30,
                         width:80,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Colors.black),

                         ),
                         child: Center(child: Text('2',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                       ),
                       SizedBox(width: 5,),
                       Container(
                         height:30,
                         width:30,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Colors.black),

                         ),
                         child: Icon(CupertinoIcons.minus),
                       ),
                         SizedBox(width: 200,),
                         Container(
                           margin: EdgeInsets.symmetric(
                               vertical: 8, horizontal: 8),
                           width: 120,
                           height: 30,
                           decoration: BoxDecoration(
                             color: Colors.orange,
                             borderRadius: BorderRadius.circular(20),


                           ),
                           child: Center(child: Text('ADD TO CART',style: TextStyle(color: Colors.white),)),
                         ),
                       ]),

                     )
                   ],
                 ),
               )
           ),

           Padding(
             padding: const EdgeInsets.only(top: 240),
             child: Container(
               height: 150,
               width: double.infinity,
               color: Colors.grey[300],
               child: Stack(
                 children: [
                   SizedBox(height: 10,),
                   Positioned(top:18,left:5,child: Text('Lunch Food',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
                   Positioned(top:50,left:5,child:Text('\$250.00',style: TextStyle(fontSize: 10,color: Colors.black),)),
                   Positioned(top: 80,left: 5,
                     child: Row(
                       children: [
                         Container(
                           margin: EdgeInsets.symmetric(
                               vertical: 8, horizontal: 8),
                           width: 50,
                           height: 20,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(20),


                           ),
                           child: Center(child: Text('ice')),
                         ),
                         Container(
                           margin: EdgeInsets.symmetric(
                               vertical: 8, horizontal: 8),
                           width: 50,
                           height: 20,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(20),


                           ),
                           child: Center(child: Text('juice')),
                         ),
                         Container(
                           margin: EdgeInsets.symmetric(
                               vertical: 8, horizontal: 8),
                           width: 50,
                           height: 20,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(20),


                           ),
                           child: Center(child: Text('drinks')),
                         ),

                       ],
                     ),
                   ),
               Positioned(top:20,right:5,child:Icon(Icons.favorite,color: Colors.red,size: 30,)),
                   Positioned(top: 80,right: 5,
                     child: Row(children: [

                       Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),
                       Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),
                       Icon(Icons.star_border, color: Colors.grey,size: 20.0,),
                     ],),
                   )
                 ],
               ),
             ),
           ),
           Container(
             height: 250,
             width: double.infinity,
             decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)), color: Colors.brown[200], ),
             child: ListView(
               children: [
                Column(
                 children: [
                     Row(mainAxisSize: MainAxisSize.min,
                       children: [
                         Container(
height:20,
                           width: 20,
                           margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                       decoration:BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),
                           child: Center(child: FaIcon(FontAwesomeIcons.arrowLeft,color: Colors.black,size: 15,)),
                         ),
                         SizedBox(width: 350,),
                         Container(
                           height:20,
                           width: 20,
                           margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                           decoration:BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),
                           child: Center(child: FaIcon(FontAwesomeIcons.shoppingCart,color: Colors.black,size: 15,)),
                         )
                       ],
                     ),
                   Image(image: AssetImage('assets/icons/noodlespng.png'),height: 250,width: 300,),
                 ],
               ),

  ]
             ),
           ),

         Positioned(top: 800,
           child: Row(
             children: [
               Padding(
                   padding: const EdgeInsets.only(
                       right: 30, left: 30, bottom: 20, top: 10),
                   child: Container(
                     margin: EdgeInsets.symmetric(
                         vertical: 8, horizontal: 8),
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
                   padding: const EdgeInsets.only(
                       right: 20, left: 10, bottom: 20, top: 10),
                   child: Container(
                     margin: EdgeInsets.symmetric(
                         vertical: 8, horizontal: 8),
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
                   padding: const EdgeInsets.only(
                       right: 20, left: 10, bottom: 20, top: 10),
                   child: Container(
                     margin: EdgeInsets.symmetric(
                         vertical: 8, horizontal: 8),
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
         )

         ],
       ),

     ),
   );
  }
  
}