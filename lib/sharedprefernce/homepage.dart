import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/sharedprefernce/sharedpref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepa extends StatefulWidget{
  @override
  State<homepa> createState() => _homepaState();
}

class _homepaState extends State<homepa> {
  late SharedPreferences data;

  late String username;

  @override
  void initState(){
fetchhome();
   super.initState();

  }

  void fetchhome() async{
    data=await SharedPreferences.getInstance();
    setState((){
     username=data.getString('username')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Home Page$username'),
            ElevatedButton(onPressed: (){
              data.setBool('newuser', true);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>sharedpreference()));
            }, child: Text('logout'))
          ],
        ),
      ),
    );
  }
}