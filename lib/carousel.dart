import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: carousel(),));
}
class carousel extends StatelessWidget{
  get callbackFunction => null;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: CarouselSlider(items: [
      Image(image: AssetImage('assets/image/fullscreen.jpg'),),
      Image(image: AssetImage('assets/image/fullscreen.jpg'),),
      Image(image: AssetImage('assets/image/fullscreen.jpg'),),
      Image(image: AssetImage('assets/image/fullscreen.jpg'),),
    ], options:  CarouselOptions(
      height: 400,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      onPageChanged: callbackFunction,
      scrollDirection: Axis.vertical,
    ),),
  );
  }
}