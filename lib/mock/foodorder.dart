import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: foodorder(),debugShowCheckedModeBanner: false,));
}
class foodorder  extends StatefulWidget{
  @override
  State<foodorder> createState() => _foodorderState();
}

class _foodorderState extends State<foodorder> {
  var screen=[

  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(top: 300),
              child: Container(
                height: 500,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                     Positioned(top: 10,left: 20,
                       child: Row(
                         children: [
                           Container(
                             height: 350,
                             width: 300,
                             decoration: BoxDecoration(
                               shape: BoxShape.rectangle,
                               borderRadius:BorderRadius.circular(30),
                               color: Colors.green,

                             ),
                             child: Column(

                               children: [
                                 Image(image: AssetImage('assets/icons/breakfast.png'),height: 300,width: 250,),

                               ],
                             ),
                           ),
                           SizedBox(width: 20,),
                           Container(
                             height: 350,
                             width: 300,
                             decoration: BoxDecoration(
                               shape: BoxShape.rectangle,
                               borderRadius:BorderRadius.circular(30),
                               color: Colors.brown[400],

                             ),
                             child: Column(

                               children: [
                                 Image(image: AssetImage('assets/icons/noodlespng.png'),height: 300,width: 250,),

                               ],
                             ),
                           )
                         ],
                       ),
                     ),
                    Positioned(top: 250,left: 40,
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: 250,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.black
                                )
                              ]
                            ),
                            child: Stack(
                              children: [
                                SizedBox(height: 10,),
                                Positioned(top:18,left:10,child: Text('Morning Breakfast',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
                                Positioned(top:50,left:10,child:Text('\$250.00',style: TextStyle(fontSize: 10,color: Colors.black),)),
                                Positioned(top: 60,left: 10,
                                  child: Row(children: [

                                    Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),
                                    Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),
                                    Icon(Icons.star_border, color: Colors.grey,size: 20.0,),
                                  ],),
                                ),
                                Positioned(top: 90,left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 8),
                                        width: 50,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color:  Colors.redAccent[100],
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
                                          color:  Colors.blue[100],
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
                                          color: Colors.orange[100],
                                          borderRadius: BorderRadius.circular(20),


                                        ),
                                        child: Center(child: Text('drinks')),
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(width: 70,),
                          Container(
                            height: 150,
                            width: 250,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:BorderRadius.circular(15),
                              color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      color: Colors.black
                                  )
                                ]
                            ),
                            child: Stack(
                              children: [
                                SizedBox(height: 10,),
                                Positioned(top:18,left:10,child: Text('Lunch Food',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
                                Positioned(top:50,left:10,child:Text('\$250.00',style: TextStyle(fontSize: 10,color: Colors.black),)),
                                Positioned(top: 60,left: 10,
                                  child: Row(children: [

                                    Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),
                                    Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),Icon(Icons.star, color: Colors.yellowAccent,size: 20.0,),
                                    Icon(Icons.star_border, color: Colors.grey,size: 20.0,),
                                  ],),
                                ),
                                Positioned(top: 90,left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 8),
                                        width: 50,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color:  Colors.redAccent[100],
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
                                          color:  Colors.blue[100],
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
                                          color: Colors.orange[100],
                                          borderRadius: BorderRadius.circular(20),


                                        ),
                                        child: Center(child: Text('drinks')),
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              // color: Colors.grey,
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                Positioned(top:10,left:5,child:Text('Find Your Best')),
                  Positioned(top:25,left:5,child: Text('Nutriton Meal',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                  Positioned(
                    right: 10,

                    child: Container(
                      height:40,
                      width: 40,
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      decoration:BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.brown),
                      child: Center(child: Image(image: AssetImage('assets/icons/person.png'),))
                    ),
                  ),
                  Positioned(top: 60,left: 1,right: 1,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),

                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(0.0)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '   Search Foods',
                          border: InputBorder.none,
                          suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(top: 130,left: 20,
                    child: Row(
                      children: [
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.redAccent[100],

                            image: DecorationImage(image: AssetImage(
                                'assets/icons/Donut-icon (1).png')),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(5),

                            image: DecorationImage(image: AssetImage(
                                'assets/icons/Milk-Bottle-icon.png'), ),
                          ),),
                        SizedBox(width: 20,),
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(5),

                            image: DecorationImage(image: AssetImage(
                                'assets/icons/seafood.png') ),
                          ),),
                        SizedBox(width: 20,),
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(5),

                            image: DecorationImage(image: AssetImage(
                                'assets/icons/snack.png'),),
                          ),),


                      ],
                    ),

                  ),
                  Positioned(top: 250,left: 30,
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                       Text('Bakery',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        SizedBox(width: 80,),
                        Text('Diary',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                        SizedBox(width: 70,),
                        Text('SeaFood',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                        SizedBox(width: 70,),
                        Text('Snacks',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold))
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(type: BottomNavigationBarType.fixed,backgroundColor: Colors.white,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.black,
        currentIndex: index,
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        },
        items:[

          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.brown[200],),label: 'Home',backgroundColor: Colors.grey),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer,color: Colors.brown[200]),label: 'Offers'),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.cartShopping,color: Colors.brown[200]),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,color: Colors.brown[200]),label: 'Account'),
        ],),
    );
  }
}