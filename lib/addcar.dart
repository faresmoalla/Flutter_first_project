// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_first_application/main.dart';

// ignore: use_key_in_widget_constructors
class Addcar extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
return  Scaffold(
appBar: AppBar(
  title: Text("Add a new Car")
),
bottomNavigationBar: BottomNavigationBar(
   type: BottomNavigationBarType.fixed,
   
 items: [
  BottomNavigationBarItem(label : "a",icon: Icon(Icons.list)),
  BottomNavigationBarItem(label : "b",icon: Icon(Icons.add)),

 ],
  
  ),
body : 
ListView(
  children: [],
)


);





  }
  




}