import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_app/doctor_search.dart';

import "package:hexcolor/hexcolor.dart";

import 'about_doctor.dart';
import 'doctor_description.dart';

class Find_doctor extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return num_doctor();
  }
}

class num_doctor extends State<Find_doctor>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return  Scaffold(
     appBar: AppBar(
       title: Text("Find Your Doctor"),
     ),
     body: Container(
       child: Column(
         children: [
           ListTile(
             title: Text("Choose The Doctor You Want",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 35,
                 color: HexColor("#49096A")
               ),
             ),
             contentPadding: const EdgeInsets.only(top: 60,left: 30,right: 30),
           ),
           ListTile(
             title:    Text("Talk with your doctor and be healthy",
               style: TextStyle(
                 color: HexColor("#6B3786")
               ),
             ),
             contentPadding: const EdgeInsets.only(left: 30,right: 30),

           ),

           Container(
             child:  FlatButton(
               onPressed: (){
                 Navigator.of(context).push(
                   MaterialPageRoute(builder: (context) => about_doctor()),
                 );
               },
               child:Text("Get Started",style: TextStyle(
                 color: HexColor("#ffffff")
               ),
               ),

             ),

             decoration: BoxDecoration(
               color: Colors.redAccent,
               borderRadius: BorderRadius.circular(20),
             ),
             width: 160,
             height: 40,
             margin: const EdgeInsets.only(top: 30),
           ),
           Container(
                child:Image.network('https://i.pinimg.com/originals/2b/19/ae/2b19ae15ff666efd06ec114ebe59988f.png',
             ),
             margin: const EdgeInsets.only(top: 50),
           ),
         ],
       ),
       color: Colors.white,
     ),
   );
  }
}