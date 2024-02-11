import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/sharedprefernce/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MaterialApp(home: sharedpreference(),));
}
class sharedpreference extends  StatefulWidget{
  @override
  State<sharedpreference> createState() => _sharedpreferenceState();
}

class _sharedpreferenceState extends State<sharedpreference> {
  late SharedPreferences data;
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  late bool newuser;
  @override
  void initState(){
    checkuser();
    super.initState();
  }
  void checkuser() async{
    data=await SharedPreferences.getInstance();
    newuser=(data.getBool('newuser')??true);
    if(newuser==false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>homepa()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('sharedpreference'),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Login Page'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: username,decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),labelText: 'user name'),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: password,decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),labelText: 'Password'),),
            ),
            ElevatedButton(onPressed: (){
              String uname=username.text;
              String paswrd=password.text;
              if(uname!='' && paswrd!=''){
                print('login success');
                data.setString('username', uname);
                data.setBool('newuser', false);
               Navigator.push(context, MaterialPageRoute(builder: (context)=>homepa()));
              }
            }, child: Text('LOGIN'))
          ],
        ),
      ),
    );
  }
}