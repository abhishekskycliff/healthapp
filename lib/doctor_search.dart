import 'package:flutter/material.dart';
import 'package:health_app/drawer_screen.dart';
import 'package:hexcolor/hexcolor.dart';

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
      body: Container(
        child: Column(
          children: [
            Container(
              child: Text("Find Your Desired Doctor",style: TextStyle(
              fontSize: 30,
                fontWeight: FontWeight.bold,
                color: HexColor("49096A")
              ),
              ),
              margin: const EdgeInsets.only(left: 25,top: 50),
            ),
          ],
        ),
      ),
    );
  }

}