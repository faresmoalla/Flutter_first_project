import 'package:flutter/material.dart';
import 'package:flutter_first_application/car_list.dart';
import 'car_view.dart';
import 'car_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Welcome Fares",
        home: CarList()



            );
  }
}
