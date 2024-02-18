import 'package:flutter/material.dart';

import 'package:flutterproject1/registrationdatastore/sqlhelper.dart';


class AdminHome extends StatefulWidget {

  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  var data;
  void delete(int id)async {
    await SQLhelper.Deleteuser(id);
    Refresh();
  }
  @override
  void initState() {
    Refresh();
    super.initState();
  }
  void Refresh() async{
    var mydata  = await SQLhelper.getAll();
    setState(()   {
      data = mydata;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Panel'),),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,int index){
            return Card(
              color: Colors.deepPurple[200],
              child: ListTile(
                title: Text('${data[index]['name']}'),
                trailing: IconButton(onPressed: (){
                  delete(data[index]['id']);
                },icon: Icon(Icons.delete),),
              ),
            );
          }),
    );
  }
}