// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'car_view.dart';

class CarList extends StatelessWidget{
  
  List<Car> listcars = [
Car("Seat","Ibiza","images/v1.jpg"),
Car("Seat","Ibiza","images/v1.jpg"),
Car("Seat","Ibiza","images/v1.jpg"),
Car("Seat","Ibiza","images/v1.jpg"),
Car("Seat","Ibiza","images/v1.jpg"),
Car("Seat","Ibiza","images/v1.jpg"),
Car("Seat","Ibiza","images/v1.jpg"),
Car("Seat","Ibiza","images/v1.jpg"),
Car("Seat","Ibiza","images/v1.jpg"),
Car("Seat","Ibiza","images/v1.jpg"),
Car("Seat","Ibiza","images/v1.jpg"),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Cars Agency")
      ),
    body :
    
     ListView.builder(itemBuilder:(context, index) {
      
      return CarView(listcars[index].carMark,listcars[index].carModel,listcars[index].carImage);

    },

    itemCount: listcars.length,
    ),
    
    )  ;  


  }

}



class Car {
   final String carMark;
   final String carModel;
   final String carImage;

  Car(
     this.carMark,
     this.carModel,
     this.carImage,
  );  
  

  
  
}
