import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/homepageassingment.dart';
import 'package:flutterproject1/registrationpageassigment.dart';

void main() {
  runApp(MaterialApp(
    home: logassigment(),
  ));
}

class logassigment extends StatefulWidget {
  @override
  State<logassigment> createState() => _logassigmentState();
}

class _logassigmentState extends State<logassigment> {
  GlobalKey<FormState> formkey=GlobalKey();
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Form(
              key: formkey,
      child: Column(
        children: [

          SizedBox(
            height: 50,
          ),
          Image(
            image: AssetImage('assets/icons/flutter-icon.png'),
            height: 200,
            width: 200,
          ),
          Text('login Page'),
          Padding(
            padding:
                const EdgeInsets.only(left: 60, right: 60, bottom: 10, top: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'USERNAME',
                  labelText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              validator: (username){
                if(username!.isEmpty|| !username.contains('@') || !username.contains('.'));
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 60, right: 60, bottom: 10, top: 20),
            child: TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: () {
                   setState(() {
                     if(pass){
                       pass=false;
                     }
                     else(pass){
                       pass=true;
                     };
                   });


                  }, icon:Icon( pass==true?Icons.visibility_off:Icons.visibility,)),
                  hintText: 'PASSWORD',
                  labelText: "password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              validator: (password){
                if(password!.isEmpty||password.length<8);
              },
            ),
          ),
          ElevatedButton(onPressed: (){
            final valid=formkey.currentState!.validate();
            if(valid){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
            }
          }, child: Text("LOGIN")),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>registrationpage()));
          }, child: Text('havet user! create new account'))
        ],
      ),
    )));
  }
}
