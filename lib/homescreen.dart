import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool showpass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo[200],
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              'login page',
              style: TextStyle(
                  color: Colors.lime,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 60, right: 60, bottom: 20, top: 70),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: 'USERNAME',
                  labelText: 'Username',
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 30),
              child: TextField(
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

              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('login'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen[100],
                  foregroundColor: Colors.grey),
            ),
            TextButton(
                onPressed: () {},
                child: Text("havn't user ! Create a new Account"))
          ],
        ),
      ),
    );
  }
}
