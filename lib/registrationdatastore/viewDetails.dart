import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/registrationdatastore/sqlhelper.dart';
void main(){
  runApp(MaterialApp( home: viewDetails(),));
}
class viewDetails extends StatefulWidget{
  @override
  State<viewDetails> createState() => _viewDetailsState();
}

class _viewDetailsState extends State<viewDetails> {
  var data;
  @override
  void initState() {
    refresh();
    super.initState();
  }
  void refresh() async{
    var mydata=await SQLhelper.getData();
    setState(() {
      data=mydata;
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150,mainAxisSpacing: 10,crossAxisSpacing: 10), itemBuilder: (context,int index){
       return Container(
         height: 250,
         width: 300,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
         child: Column(
           children: [
             Center(child: Image(image: AssetImage('assets/image/watch.jpeg'))),
             Text('${data[index]['name']}'),
             Text('${data[index]['price']}'),
             Text('${data[index]['description']}')
           ],
         ),
       );
     },itemCount: data.length),
   );
  }

  
}