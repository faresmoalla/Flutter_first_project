// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_first_application/main.dart';

class CarDetail extends StatelessWidget {
   /*final String marque;
   final String model;
   final String image;
   final String quantite;

   CarDetail(
  
     this.marque,
     this.model,
     this.image,
     this.quantite
  ) ;*/

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("Book a car"),
  ),
body : 
Column(
  children: [
Center(
  
  child: TextButton(onPressed: (){
   /* Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return MyApp();

    })
    );
*/
  } 
  , child: Text("Go to Home"))
  
   )
]
)


);









  }
  




}
