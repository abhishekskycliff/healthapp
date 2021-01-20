import 'package:flutter/material.dart';
import 'package:health_app/drawer_screen.dart';

class Profile_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return profile();
  }
}

class profile extends State<Profile_screen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),

      ),

    );
  }

}