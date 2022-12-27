


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_application/addcar.dart';
import 'package:flutter_first_application/car_list.dart';

class Tabinterface extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
   
return DefaultTabController(
  length: 2,
   child: Scaffold(
    appBar: AppBar(

      title: Text("title"),
      
      
      bottom: TabBar(
        tabs:
        [
          Tab(
            icon: Icon(Icons.list),
          text: "aa",
          ),
          Tab(
            icon: Icon(Icons.add),

            text: "bb"
          )
          
        ]
         ),
    ),
    drawer: Drawer(
  child: Column(
    children: [
      AppBar(
        automaticallyImplyLeading: false,
        title: Text("choose an option")
      ),
      ListTile(
            title :  Text("Go to Botton Nav"),
       onTap: () => Navigator.pushReplacementNamed(context,"/bottomnav"),

      )

      

    ],
  ),
),

    body:
    TabBarView(children: [CarList(),addcar()])
   ),
   
   );


  }



}