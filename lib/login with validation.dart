import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/registerpage.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    home: loginpage(),
  ));
}

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _HomeState();
}

class _HomeState extends State<loginpage> {
  GlobalKey<FormState> formkey=GlobalKey();
  bool showpass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo[200],
        child:Form(
          key: formkey,

          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              // Text(
              //   'login page',
              //   style: TextStyle(
              //       color: Colors.lime,
              //       fontSize: 30,
              //       fontWeight: FontWeight.w800),
              // ),
              Image(image:AssetImage('assets/icons/flutter-icon.png'),height: 200,width: 200,),
              Padding(
                padding:
                EdgeInsets.only(left: 60, right: 60, bottom: 20, top: 70),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'USERNAME',
                    labelText: 'Username',
                  ),
                  validator: (username){
                    if(username!.isEmpty || !username.contains('@') ||  !username.contains('.')){
                     return 'enter  valid user name';
                    }
                   else{
                     return null;
                    }
                  },
                ),
              ),
              Padding(
                padding:
                EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 30),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter:'*' ,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(onPressed: () {
                        setState((){
                          if(showpass){
                            showpass=false;
                          }
                          else{
                            showpass=true;
                          }
                        });
                      }, icon: Icon(showpass==true ? Icons.visibility_off :Icons.visibility),),
                      hintText: 'PASSWORD',
                      labelText: 'Paasword',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))) ,
                  validator: (password){
                    if(password!.isEmpty|| password.length<8);
                  },

                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final valid=formkey.currentState!.validate();
                  if(valid){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>home()));

                  }
                },
                child: Text('login'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen[100],
                    foregroundColor: Colors.grey),
              ),
              TextButton(
                  onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>registerpage()));

                  },
                  child: Text("havn't user ! Create a new Account"))
            ],
          ),
        ),
      ),
    );
  }
}
