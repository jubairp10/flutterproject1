import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(DevicePreview(isToolbarVisible:true,builder:(BuildContext context)=>MaterialApp(debugShowCheckedModeBanner: false,useInheritedMediaQuery: true,home:profileui(),)));
}
class profileui extends StatelessWidget{
  var title=['Privacy','Purchace History','Help & Support','Settings','Invite friend'];
  var icon=[Icons.privacy_tip_outlined,Icons.history,Icons.help_outline_outlined,Icons.settings,Icons.person_add_alt_outlined];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           ListTile(
             leading: Icon(Icons.arrow_back),
             trailing: FaIcon(FontAwesomeIcons.list),
           ),
          SizedBox(height: 20,),
           Container(decoration: BoxDecoration(shape: BoxShape.circle),

             child: Center(child: SizedBox(height:100,width:100,child: CircleAvatar(backgroundImage: AssetImage('assets/icons/men.jpeg'),radius: 20,))),
           ),
           SizedBox(height: 40,),
           Container(alignment: Alignment.center,
             child:  Center(
             child: Row(
               children: [
                 SizedBox(width: 110,),
                 CircleAvatar(backgroundColor: Colors.indigo,child: FaIcon(FontAwesomeIcons.facebook),),
                 SizedBox(width: 40,),
                 CircleAvatar(backgroundColor: Colors.redAccent,child: FaIcon(FontAwesomeIcons.google,),),
                 SizedBox(width: 40,),
                 CircleAvatar(backgroundColor:Colors.blue,child: FaIcon(FontAwesomeIcons.twitter,),),
                 SizedBox(width: 40,),
                 CircleAvatar(backgroundColor: Colors.indigoAccent,child: FaIcon(FontAwesomeIcons.linkedinIn,),),

               ],

             ),
           ),),
           SizedBox(height: 40,),
           Container(
             child: Column(
               children: [
                 Center(child: Text("Chromicle",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),)),
                 SizedBox(height: 8,),
                 Center(child: Text('@amFOSS',style: TextStyle(fontSize: 10,color: Colors.black),)),
                 SizedBox(height: 13,),
                 Center(child: Text('Mobile App Developer And Open \n Source Enthusiastic',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.black),))
               ],
             ),
           ),
          SizedBox(height: 30,),
          SizedBox(
            height: 500,
            child: ListView.builder(itemCount: 5,itemBuilder: (context,index){
              return  Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
                child: Container(

                    margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.grey[200],),
                    child: ListTile(
                      leading: Icon(icon[index]),
                      title: Text(title[index]),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    )
                ),
              );
            }),
          )
          
         ]
       ),
     ),
   );
  }

}