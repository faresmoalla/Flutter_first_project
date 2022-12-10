// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CarView extends StatelessWidget {
  final String marque ;
  final String model; 
  final String image;
   CarView(this.marque,this.model,this.image) ;

  

  
  @override
  Widget build(BuildContext context) {
 
    return Card(
          child: Row(
            children: [
            Image.asset(image,width: 150,height: 150),
            Container(
              margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child:   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(marque),
                Text(model)
              ],

            ),


            ),
           

            ],
          ),


        );


  }




}
