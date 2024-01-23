import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridextend(),));
}
class gridextend  extends StatelessWidget{
  var icon=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera_alt,Icons.person,Icons.print,Icons.phone,Icons.speaker_notes,Icons.music_note_outlined];
  var color=[Colors.lime,Colors.grey,Colors.brown,Colors.pink,Colors.blueGrey,Colors.teal,Colors.purpleAccent,Colors.deepOrangeAccent,Colors.greenAccent,Colors.pinkAccent,Colors.lightGreen,Colors.black45];
  var iconname=['Home','E-mail','Time','Wallet','Backup','Book','Cmera','Person','Print','Phone','Notes','Music'];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Grid View'),
     leading: Icon(Icons.arrow_back),backgroundColor: Colors.blue,foregroundColor: Colors.white,),
     body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150,mainAxisSpacing: 10,crossAxisSpacing: 10), itemBuilder: (context,index){
       return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
         color: color[index],
         child: Column(
           children:[
             SizedBox(height: 50,),
           Text('${iconname[index]}'),
           Icon(icon[index])
           ]
         ),






       );
     },itemCount: iconname.length,),
   );
  }
}
