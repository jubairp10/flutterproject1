import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.grey[400],
        child: Column(
          children: [
            SizedBox(height: 70,),
            Text('Login Page',style: TextStyle(color: Colors.lightBlueAccent[500],fontSize: 40,fontWeight: FontWeight.w900,
            ),),
            Padding(
              padding: const EdgeInsets.only(right: 60,left: 60,bottom: 30,top:70),
              child: TextField(decoration: InputDecoration(prefixIcon:Icon(Icons.person),border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),hintText: 'uname',labelText: 'uname'),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60,left: 60,bottom: 10,top: 10),
              child: TextField(decoration: (InputDecoration(prefixIcon:Icon(Icons.password),suffixIcon: Icon(Icons.visibility_off),border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)))),),
            ),
            ElevatedButton(onPressed: (){ }, child: Text('login'),style: ElevatedButton.styleFrom(backgroundColor: Colors.black87,foregroundColor: Colors.greenAccent),),
            TextButton(onPressed: (){}, child: Text('have not a account!Create  account')),
          ],
        ),
      ),
    );
  }
//
}
// void main() {
// for(int i=0;i<=100;i++){
//   if(i%2==0){
//     print(i);
//   }
// }
// }
