import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/sampleproject/loginpagep.dart';

import 'package:dob_input_field/dob_input_field.dart';



void main(){
  runApp(MaterialApp(home: registerpagep(),));
}
class registerpagep extends StatefulWidget {
  @override
  State<registerpagep> createState() => _registerpageState();
}

class _registerpageState extends State<registerpagep> {
  GlobalKey<FormState>key = GlobalKey();
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          child: Column(
            key: key,

            children: [
              Text('Registration', style: TextStyle(color: Colors.black54,
                  fontWeight: FontWeight.w800,
                  fontSize: 50),),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, bottom: 20, top:40 ),
                child: TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: 'First Name',
                      hintText: ' First name'),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 40, left: 40, top: 20, bottom: 20,),
                child: TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: 'Second Name',
                      hintText: ' Second name'),),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, bottom: 20, top: 20),
                child: TextFormField(decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))
                    ,
                    hintText: 'E-mail',
                    labelText: 'e-mail'
                ),
                  validator: (email) {
                    if (email!.isEmpty || !email.contains('@') ||
                        !email.contains('.')) {
                      return 'eg:-abcd123@gmail.com';
                    }
                    else {
                      return null;
                    }
                  },),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, bottom: 20, top: 20),
                  child: TextFormField(
                    obscureText: pass,
                    obscuringCharacter: '.',
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            if (pass) {
                              pass = false;
                            }
                            else {
                              pass = true;
                            }
                          });
                        },
                            icon: Icon(pass == true ? Icons.visibility_off : Icons
                                .visibility)),hintText: 'password',labelText: 'Password',border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 4) {
                        return '4 digits';
                      }
                    },
                  )
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 20),
                child: DOBInputField(
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  showLabel: true,
                  showCursor: true,
                  autovalidateMode: AutovalidateMode.always,
                  fieldLabelText: "Date of birth",
                  inputDecoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final valid1=key.currentState!.validate();
                  if(valid1) {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => loginpagep()));
                  }
                },

                child: Text('REGISTER'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen[100],
                    foregroundColor: Colors.grey),
              ),
            ],
          ),
        ),
      ),

    );
  }
}