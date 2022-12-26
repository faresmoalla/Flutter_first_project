// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_first_application/bottomNav.dart';
import 'package:flutter_first_application/car_detail.dart';
import 'package:flutter_first_application/car_list.dart';




void main() => runApp(
MaterialApp(
  title: "Welcome Fares",
  //home : MyApp(),
  routes : {
    "/": (context)=> MyApp()  ,
    "/list"   :  (context)=> CarList() ,
    "/add" : (context)=> BottomNav()
    
  }
)

);

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
           title :  Text("This is Appbar")
            
            ),
          body : 
          Card(

          
         child:   ListView( 
              children : [

        //  Image.network("https://payyourintern.com/wp-content/uploads/2020/08/Google.png",width: 50,height: 50,),
  Container(
            color : Colors.white,
           // width: double.infinity,
           // margin: EdgeInsets.all(10),
          /// margin: EdgeInsets.only(left:10,right: 50,top: 20),
          //margin: EdgeInsets.fromLTRB(10,10,10,10),
            //height: 100,

      
             child :
             Row(

             children: [

             
              Text("G ", style: TextStyle(backgroundColor: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
              ElevatedButton(
          
                onPressed: (){
                   Navigator.pushReplacementNamed(context,"/list");
                   
                    /*  Navigator.push(
                        
                        context,
                         MaterialPageRoute(   builder: (context)=> one()),
                           );*/
              /*   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return  one();} ));*/
         // Navigator.pushNamed(context, '/second');
              }, child: Text("List Cars")),

              TextButton(
                    style: TextButton.styleFrom(
                       primary: Colors.blue,
                    onSurface: Colors.red,
                    
                    ),
                onPressed: (){
                    Navigator.pushReplacementNamed(context,"/add");
               
              }, child: 
              Row(
                children: [Text("Add"),
                Icon(Icons.ac_unit_rounded)
                   ]
                    )    , 
              ),
             
              
              OutlinedButton(onPressed: (){
                print("fares2");
              }, child: Text("log in"))
              , 
               IconButton(onPressed: (){
                print("fares2");
              }, icon: Icon(Icons.person)),
              CircleAvatar(backgroundColor: Colors.green,child: Text("a"), radius: 20
              
              ),

              ]
            )
          ),
         
         ],
         //CarList()
          ) 



    
        )
    );
  }
}
