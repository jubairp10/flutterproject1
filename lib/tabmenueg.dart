import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'callhistory.dart';
void main(){
  runApp(MaterialApp(home: tabmenu(),));
}
class tabmenu extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text('Tab Demo'),backgroundColor: Colors.teal,
        actions: [
          ],
          bottom: TabBar
            (tabs: [
              Tab(icon: FaIcon(FontAwesomeIcons.a),child: Text('Calls',style: GoogleFonts.adventPro(
                fontSize: 20,
                fontStyle: FontStyle.italic
              ),),),
            Tab(icon: Icon(Icons.call_missed),child: Text('Missed',style: GoogleFonts.adventPro(fontSize: 20,fontStyle: FontStyle.italic),),),
            Tab(icon: Icon(Icons.call_received),child: Text('Recieved',style: GoogleFonts.adventPro(fontSize: 20,fontStyle: FontStyle.italic),),)
          ],),

        ),
        body: TabBarView(children: [
          calllist()
        ],),
      ),
    ) ;
}
}
