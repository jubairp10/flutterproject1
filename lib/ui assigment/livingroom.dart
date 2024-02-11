import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: livingroom(),
  ));
}

class livingroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.brown[200],
            child: ListView.builder(itemCount: 1,itemBuilder: (context,index){
              return Column(
                children: [
                  SizedBox(height: 20,),
                  Row(mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(FontAwesomeIcons.backward,color: Colors.white,),
                      SizedBox(width: 150,),
                      Text('Living Room',style: TextStyle(color: Colors.white),),
                      SizedBox(width: 180,),
                      Icon(Icons.settings,color: Colors.white,),
                    ],
                  ),
              Container(
              margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              height: 80,
              padding: EdgeInsets.only(left: 10,right: 10,top: 10),
              decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius:BorderRadius.circular(30),
              color: Colors.white,
              ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisSize: MainAxisSize.min,
                    children: [
                       Row(mainAxisSize: MainAxisSize.min,
                         children: [
                           FaIcon(FontAwesomeIcons.temperature2,color: Colors.black,),
                           Text(' 25*c',style: TextStyle(color: Colors.black,fontSize: 20),),
                           SizedBox(width: 100,),
                           FaIcon(FontAwesomeIcons.water,color: Colors.black,),
                           Text(' 57%',style: TextStyle(color: Colors.black,fontSize: 20),),
                           SizedBox(width: 100,),
                           FaIcon(FontAwesomeIcons.lightbulb,color: Colors.black,),
                           Text(' 80%',style: TextStyle(color: Colors.black,fontSize: 20),),
                         ],
                       ),
                      Row(mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Temperature',style: TextStyle(color: Colors.black)),
                          SizedBox(width: 100,),
                          Text('Humidity',style: TextStyle(color: Colors.black)),
                          SizedBox(width: 100,),
                          Text('Ligtining',style: TextStyle(color: Colors.black))
                        ],
                      ),

                    ],
                  ),
                ) ,
              ),
                  Row(mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10),
                        child: Text('Usage Today',style: TextStyle(fontSize: 10,color: Colors.white),),
                      ),
                      SizedBox(width: 310),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 10),
                        child: Text('0.5 kwH',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white),),
                      )
                    ],
                  ),
                  Container(height: 100,width: double.infinity,child: Image(image: AssetImage('assets/icons/Line_graph-removebg-preview.png'),height: 150,width: 900,color: Colors.white,))

                ],
                
              );
            }),
          ),
          
          Padding(
              padding: const EdgeInsets.only(top: 300),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    width: double.infinity,
                      color: Colors.grey[300],
                      child: Column(children: [

                        Row(mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10),
                              child: Text('Devices',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
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
                              height: 135,
                              width: 200,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:BorderRadius.circular(30),
                                color: Colors.orangeAccent,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 10),
                                    child: Icon(Icons.light,size: 50,),
                                  ),
                                  SizedBox(height: 20,),
                                  Text('    Light',style: TextStyle(fontSize: 20,color: Colors.black),),
                                  Text('    80%',style: TextStyle(fontSize: 20,color: Colors.black),)
                                ],
                              ),
                            ),
                            SizedBox(width: 50,),
                            Container(
                              height: 135,
                              width: 200,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 10),
                                    child: Icon(Icons.ac_unit,size: 50,),
                                  ),
                                  SizedBox(height: 20,),
                                  Text('    AC',style: TextStyle(fontSize: 20,color: Colors.black),),
                                  Text('    23*C',style: TextStyle(fontSize: 20,color: Colors.black),)
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 135,
                              width: 200,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 10),
                                    child: Icon(Icons.wifi,size: 50,),
                                  ),
                                  SizedBox(height: 20,),
                                  Text('    Wi-Fi',style: TextStyle(fontSize: 20,color: Colors.black),),
                                  Text('    on',style: TextStyle(fontSize: 20,color: Colors.black),)
                                ],
                              ),
                            ),
                            SizedBox(width: 50,),
                            Container(
                              height: 135,
                              width: 200,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 10),
                                    child: Icon(Icons.tv_sharp,size: 50,),
                                  ),
                                  SizedBox(height: 20,),
                                  Text('    Smart TV',style: TextStyle(fontSize: 20,color: Colors.black),),
                                  Text('    off',style: TextStyle(fontSize: 20,color: Colors.black),)
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 20,),
                      InkWell(
                        child: Container(
                            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            height: 50,
                            width: 500,
                            padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:BorderRadius.circular(20),
                              color: Colors.brown[300],
                              boxShadow: [
                                BoxShadow(blurRadius: 10)
                              ]
                            ),
                          child: Center(child: Text('Turn off all devices',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),
                      )

                        ])))),
        ],
      ),
    );
  }
}
