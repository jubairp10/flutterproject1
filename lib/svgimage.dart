import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main(){
  runApp(MaterialApp(home: svgimage(),));
}
class svgimage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   body: Container(
     child: SvgPicture.asset('assets/svg/images.svg'),
   ),
   );
  }

}