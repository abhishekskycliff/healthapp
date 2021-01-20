import 'package:flutter/material.dart';
import 'package:health_app/drawer_screen.dart';

class Hospital_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Hospital();
  }
}

class Hospital extends State<Hospital_Screen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Hospital"),

      ),
    );
  }

}