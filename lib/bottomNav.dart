// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_first_application/addcar.dart';
import 'package:flutter_first_application/car_list.dart';


// ignore: use_key_in_widget_constructors
class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
 int _currentindex= 0;

  List<Widget> interfaces = [CarList(),addcar()];

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
 currentIndex: _currentindex,
 onTap: (int value){
  setState(() {
  _currentindex=value;  
  });
 },
  
  ),
body : 

interfaces[_currentindex],


);





  }
}
