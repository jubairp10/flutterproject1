import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

// void main(){
//   runApp(DevicePreview(
//       isToolbarVisible:true,
//
//       builder: (BuildContext context) => MaterialApp(
//         useInheritedMediaQuery:true,
//         debugShowCheckedModeBanner:false,
//         home: sampleUi(),)));
// }
// class sampleUi extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.black,title: Text('SAMPLE PAGE'),centerTitle: true,),
//       // body: Container(color:Colors.cyan,height:double.infinity,width:double.infinity,
//       body: Container(height:double.infinity,width:double.infinity,decoration: BoxDecoration(gradient: LinearGradient(colors:[Colors.red,Colors.transparent,Colors.greenAccent],
//       begin: Alignment.centerRight,
//       end: AlignmentDirectional.bottomEnd)),
//         child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(Icons.flutter_dash,size: 50,),
//             Text('Flutter',style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.w800,fontStyle: FontStyle.italic),),
//         ],
//       ),),
//     );
//   }
//
// }
// void main(){
//   runApp(MaterialApp(home: SliverAppBar.medium(),));
// }
// class SampleUi extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('hai'),),
//       body: Center(
//         child: Container(child: Text('hello'),
//         ),
//       ),
//     );
//   }
//
// }
void main() {
  runApp(DevicePreview(
      isToolbarVisible: true,
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: sambleui(),
          )));
}

class sambleui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('welcome'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          height: double.infinity,
          width: double.infinity,
          child: Text(
            'flutter',
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w800,
                color: Colors.cyanAccent.shade700,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
