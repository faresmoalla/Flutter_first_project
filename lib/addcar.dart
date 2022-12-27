import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addcar extends StatefulWidget {
  @override
  State<addcar> createState() => _addcarState();
}

class _addcarState extends State<addcar> {
   late final String carMark;
  late final int quantity;
  late final String carModel;
  late final String description;

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Form(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Image.asset("images/v2.jpg"),
              height: 110,
              width: 110,
            ),
            TextFormField(
              
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Mark"),
              onSaved: (String? value) {

               carMark = value!; 
               },
               
              validator: ( String? value) {
                if( value!.isEmpty){
                  return "required";  
                }
                return null ;
              },
            ),
           
            const SizedBox(
              height: 10,
            ),
            TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Quantity"),
                onSaved: (String? value) {
                  quantity = int.parse(value!);
                },
                 validator: ( String? value) {
                if( value!.isEmpty){
                  return "required";  
                }
                
                if(int.tryParse(value)==null){
                      return "must be a number";
                  }

              },
                ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "carModel"),
              onSaved: (String? value) => carModel = value!,
               validator: ( String? value) {
                if( value!.isEmpty){
                  return "required";  
                }
                return null ;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLines: 3,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Description"),
                   validator: ( String? value) {
                if( value!.isEmpty){
                  return "required";  
                }
                return null ;
              },
              onSaved: (String? value) => description = value!,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                title: const Text("my car"),
                                content: Text("Car Model " +carModel +" car mark " +carMark +" quantite " +quantity.toString())
                                    );
                          });
                    },
                    child: const Text("Add"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
