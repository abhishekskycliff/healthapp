import 'package:flutter/material.dart';
import 'package:health_app/drawer_screen.dart';

class doctor_search extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Search_doc();
  }
}

class Search_doc extends State<doctor_search>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Find your Dcctor"),
      ),
    );
  }

}