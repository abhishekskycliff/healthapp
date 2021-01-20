import 'package:flutter/material.dart';

class Appoitment_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Appoitment();
  }

}

class Appoitment extends State<Appoitment_screen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Appointment"),
      ),
      body: Container(
        child: Text("Drug"),
      ),
    );
  }

}