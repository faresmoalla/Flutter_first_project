// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_first_application/main.dart';

class one extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
return 
 Scaffold(
  appBar: AppBar(
    title: Text("Book a car"),
  ),
body : 
Column(
  children: [
Center(
  
  child: TextButton(onPressed: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return MyApp();

    })
    );

  } 
  , child: Text("Go to Home"))
  
   )
]
)






);





  }
  




}
