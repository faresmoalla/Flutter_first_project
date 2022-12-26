// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'car_view.dart';

class CarList extends StatelessWidget{
  
  List<Car> listcars = [
Car("Seat","Ibiza","images/v1.jpg"),
Car("aa","Ibiza","images/v1.jpg"),
Car("zz","Ibiza","images/v1.jpg"),
Car("ee","Ibiza","images/v1.jpg"),
Car("rr","Ibiza","images/v1.jpg"),
Car("tt","Ibiza","images/v1.jpg"),
Car("vv","Ibiza","images/v1.jpg"),
Car("ss","Ibiza","images/v1.jpg"),
Car("gg","Ibiza","images/v1.jpg"),
Car("xx","Ibiza","images/v1.jpg"),
Car("zz","Ibiza","images/v1.jpg"),
  ];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemBuilder:(context, index) {
      
      return CarView(listcars[index].carMark,listcars[index].carModel,listcars[index].carImage);

    },

    itemCount: listcars.length,
    ) ;  


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
