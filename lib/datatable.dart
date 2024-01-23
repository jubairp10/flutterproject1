import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: table(),));
}
class table extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SingleChildScrollView(
       child: Center(
         child: Container(
           decoration:BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(30),
           border: Border.all(color: Colors.yellowAccent)),

           child: DataTable(
           border: TableBorder.all(
             color: Colors.brown,
             borderRadius: BorderRadius.circular(30),
             width: 2
           ),columns: [
             DataColumn(label: Text('Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),
             DataColumn(label: Text('Age',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),
             DataColumn(label: Text('Salary',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),
             DataColumn(label: Text('Qualification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),

           ], rows: [
             DataRow(cells: [
               DataCell(Text('manu')),
               DataCell(Text('20')),
               DataCell(Text('50000')),
               DataCell(Text('   Bca')),
             ]),
             DataRow(cells: [
               DataCell(Text('amal')),
               DataCell(Text('22')),
               DataCell(Text('50000')),
               DataCell(Text('   Bca')),
             ]),DataRow(cells: [
               DataCell(Text('akshay')),
               DataCell(Text('15')),
               DataCell(Text('50000')),
               DataCell(Text('   Bca')),
             ])
           ],),
         ),
       ),
     ),
   );
  }

}