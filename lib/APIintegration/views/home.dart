import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controller/product_controller.dart';
import '../widget/productcustom.dart';

void main(){
  runApp(GetMaterialApp(home: HttpHome(),));
}

class HttpHome extends StatelessWidget{
  final productController controller=Get.put(productController());
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('products'),
     ),
     body: Column(
       children: [
         Padding(padding: EdgeInsets.all(15),child:
           Row(
             children: [
               Expanded(child: Text('Shop Now',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),))
             ],
           ),),
         Expanded(child: Obx((){
           if(controller.isLoding.value){
             return Center(child: CircularProgressIndicator(),);
           }else{
             return GridView.builder(itemCount: controller.productList.length,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
                 itemBuilder: (context,index){
               return ProductCustom(controller.productList[index]);
                 });
           }
         }))
       ],
     ),
   );
  }
}