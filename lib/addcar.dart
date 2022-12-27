import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addcar extends StatefulWidget {
  @override
  State<addcar> createState() => _addcarState();
}

class _addcarState extends State<addcar> {
    String? carMark ;
    int? quantity;
    String? carModel;
     String? description;


/*
void initState() {
  carMark = "";
    quantity = 0;
      carModel = "";
        description = "";

  super.initState();
}
*/
  GlobalKey<FormState> myKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Form(
        key :myKey,
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
              onChanged: (value) {

                 carMark = value;  
                 /*
                 setState(() {
               carMark = value!;     
                  });
                */
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
                onChanged: ( String? value) {
                  quantity = int.parse(value!);  
                 /*   setState(() {
              quantity = int.parse(value);   
                  });*/
                 
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
              onChanged: (value) {
                 carModel = value;
                 /*
   setState(() {
           carModel = value!;
                  });*/
         
              } ,
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
             
              onChanged: (value) => description = value,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () {
                      if(myKey.currentState!.validate()){
       ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                    showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                title: const Text("my car"),
                          
                                
                                content: 
                                
                                Text("Car Model $carModel car mark $carMark quantite $quantity")
                                
                                    );
                          });
                      }
                    
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
