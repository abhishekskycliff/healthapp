import 'package:flutter/material.dart';
import 'package:health_app/drawer_screen.dart';

class doctor_description extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return doctor_info();
  }
}

class doctor_info extends State<doctor_description>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("About Doctor"),

      ),

    );
  }

}