import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Druglist extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Drug();
  }

}

class Drug extends State<Druglist>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Drug List"),
      ),
       body:ListView(
         children: [
           Container(
             child:Text("Acetaminophen",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
             ),) ,
             padding: const EdgeInsets.all(20),
             color: HexColor("#EBF5FB"),
           ),
           Container(
             child:Text("Adderall",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
             ),) ,
             padding: const EdgeInsets.all(20),
             color: HexColor("#D6EAF8"),
           ),
           Container(
             child:Text("Dupixent",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
             ),) ,
             padding: const EdgeInsets.all(20),
             color: HexColor("#AED6F1"),
           ),
           Container(
             child:Text("Cymbalta",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
             ),) ,
             padding: const EdgeInsets.all(20),
             color: HexColor("#85C1E9"),
           ),Container(
             child:Text("Gilenya",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
             ),) ,
             padding: const EdgeInsets.all(20),
             color: HexColor("#5DADE2"),
           ),Container(
             child:Text("Metoprolol",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
             ),) ,
             padding: const EdgeInsets.all(20),
             color: HexColor("#3498DB"),
           ),Container(
             child:Text("Hydrochlorothiazide",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
             ),) ,
             padding: const EdgeInsets.all(20),
             color: HexColor("#2E86C1"),
           ),Container(
             child:Text("Rybelsus",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
             ),) ,
             padding: const EdgeInsets.all(20),
             color: HexColor("#2874A6"),
           ),Container(
             child:Text("Tramadol",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
             ),) ,
             padding: const EdgeInsets.all(20),
             color: HexColor("#21618C"),
           ),Container(
             child:Text("Wellbutrin",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 25,
             ),) ,
             padding: const EdgeInsets.all(20),
             color: HexColor("#1B4F72"),
           ),
         ],
       ),
      // Container(
      //   child: Builder(
      //     builder: (context) => Center(
      //       child: ElevatedButton(
      //         onPressed: () => Scaffold.of(context).showSnackBar(SnackBar(
      //           content: Text("sample"),
      //         ),
      //         ),
      //         child: Text("click"),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

}