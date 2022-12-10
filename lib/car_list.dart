import 'package:flutter/material.dart';
import 'car_view.dart';

class CarList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Cars Agency")
      ),
        
        body:  Column(
              children: [
                CarView("kia", "rio", "images/v2.jpg"),
                   CarView("kia", "rio", "images/v3.jpg"),
                      CarView("kia", "rio", "images/v1.jpg"),
                         CarView("kia", "rio", "images/v2.jpg"),
                             CarView("kia", "rio", "images/v2.jpg"),
                                 CarView("kia", "rio", "images/v2.jpg"),
               
              ],
            )


    );
   




  }



}