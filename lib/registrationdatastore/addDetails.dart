

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject1/registrationdatastore/sqlhelper.dart';

class addDetails extends StatefulWidget{

  @override
  State<addDetails> createState() => _addDetailsState();
}

class _addDetailsState extends State<addDetails> {
  var formkey2=GlobalKey<FormState>();
  var name=TextEditingController();
var pric=TextEditingController();
var descriptio=TextEditingController();

  @override
  Widget build(BuildContext context) {
    void Addnewdata(String details, String description, String  price) async {
      var id = await SQLhelper.AddNewData(details, description, price);
        if(id!=null){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Product Added')));
        }}

    return Scaffold(body: Form(
      key: formkey2,
      child: Container(

        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)),
                  hintText: 'BandName',
                  prefixIcon: Icon(Icons.drive_file_rename_outline),
                ),
                controller: name,
                validator: (name) {
                  if (name!.isEmpty) {
                    return "Name is required";
                  } else
                    return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)),
                  hintText: 'Price',
                  prefixIcon: Icon(Icons.money),
                ),
                controller: pric,
                // validator: (price) {
                //   if (price!.isEmpty) {
                //     return "Price is required";
                //   } else
                //     return null;
                // },
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)),
                  hintText: 'Description',
                  prefixIcon: Icon(Icons.money),

                ),
                controller: descriptio,
                validator: (description){
                  if (description!.isEmpty){
                    return 'description is required';

                  }else{
                    return null;
                  }
                },
              ),
            ),
            // ElevatedButton(onPressed: ()async{
            //   final valid2=formkey2.currentState!.validate();
            //   if (valid2){
            //     /// if form state is valid data from the textfield will upload to db
            //     String details= name.text;
            //     String price=pric.text;
            //     String description=descriptio.text;
            //     var data= await SQLhelper.AddNewData(details, description, price);
            //     if (data.is) {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //           const SnackBar(
            //               content: Text('User already exist')));
            //     }
            //   }
            //   else{
            //     Addnewdata(name.text, pric.text,descriptio.text);
            //   }
            // },
            // child:Text('Submit'))
            ElevatedButton(
                style: ButtonStyle(
                    minimumSize:
                    MaterialStateProperty.all(const Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ))),
                onPressed: () async {
                  final valid1 = formkey2.currentState!.validate();

                  if (valid1) {
                    /// if form state is valid data from the textfield will upload to db
                    // String details= name.text;
                    //     String price=pric.text;
                    //     String description=descriptio.text;
                    //     var data= await SQLhelper.AddNewData(details, description, price);
                    Addnewdata(name.text, pric.text,descriptio.text);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        action:
                        SnackBarAction(label: 'UNDO', onPressed: () {}),
                        content: const Text('Invalid Data')));
                  }
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    )

    );
  }
}