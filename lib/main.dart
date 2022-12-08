import 'package:flutter/material.dart';
import 'car_view.dart';

void main() =>  runApp( MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

return MaterialApp(
  title : "Welcome Fares",
  home : Scaffold(
    appBar: AppBar(
      title : Text("My car") 
    ),
    body: Column(
      children: [
        CarView("kia", "rio", "images/v2.jpg"),
        Card(
          child: Row(
            children: [
            Image.asset("images/v1.jpg",width: 150,height: 150),
            Container(
              margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child:   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Peugoet"),
                Text("206")
              ],

            ),


            ),
           

            ],
          ),


        ),

      ],
    )



  )
); 
}

}