import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mydesktopbody.dart';
import 'mymobilepage.dart';
void main(){
  runApp(MaterialApp(home: homepage(),));
}
class homepage extends StatefulWidget{
  homepage({Key? key}):super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    //!
    var deviceWidth=MediaQuery.of(context).size.width;
    //!
    if(deviceWidth< 600){
      return Mymobilebody();

    }else{
      return Mydesktopbody();
    }
  }
}