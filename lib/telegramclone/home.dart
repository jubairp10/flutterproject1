import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/telegramclone/chat.dart';
import 'package:flutterproject1/telegramclone/chats.dart';
import 'package:toggle_switch/toggle_switch.dart';
void main(){
  runApp(MaterialApp(home: thome(),debugShowCheckedModeBanner: false,));
}

class thome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.blue[600],
          title:  TabBar(indicatorColor: Colors.white,labelColor:Colors.white,unselectedLabelColor: Colors.white60,
            tabs: [
              Tab(child: Text('CHATS'),),
              Tab(child: Text('CALLS'),)
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],


        ),
        drawer:  Drawer(
          child: Stack(
            children:[

              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/icons/bg.jpg'),fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 90),

                ),
              ),
              Positioned(top: 150,height: 500,width:300,
                child: ListView(
                  children: [

                    ExpansionTile(title: Column(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[ Text('jubi',style: TextStyle(color: Colors.white),)
                      ,Text('9072220239',style: TextStyle(color: Colors.white),)]),
                      children: [
                        ListTile(
                          leading: CircleAvatar(backgroundImage: AssetImage('assets/icons/person.png'),),
                          title: Text('Jubair'),
                          trailing: Container(height:20,width:20,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueAccent),child: Center(child: Text('1')),),
                        ),
                        ListTile(
                          leading: Icon(Icons.add),
                          title: Text('Add Account'),
                        )
                      ],),
                    ListTile(
                      leading: Icon(Icons.contacts),
                      title: Text('Home'),
                    ),
                    ListTile(
                      leading: Icon(Icons.save),
                      title: Text('Saved Messages'),
                    ),   ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                    ),   ListTile(
                      leading: Icon(Icons.account_box_rounded),
                      title: Text('Logout'),
                    ),
                    ListTile(leading: Icon(Icons.help),
                    title: Text('Help'),),
                    Divider(thickness: 1,),
                    ListTile(leading: Icon(Icons.nightlight),title:Text('Night Mode'),
                      trailing: ToggleSwitch(
                      minWidth: 20.0,
                      minHeight: 20,
                      cornerRadius: 80.0,
                      activeBgColors: [[Colors.white70!], [Colors.blue!]],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.white,
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: ['', ''],
                      radiusStyle: true,
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),)
                  ],

                ),

              ),


          ]
          ),
        ),
 body: TabBarView(children:[
   tchats(),
   tchat()
 ]),
      ),
    );
  }

}