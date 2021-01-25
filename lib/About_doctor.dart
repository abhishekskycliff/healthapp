import 'package:flutter/material.dart';

class About_doctor extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Doctor_dec();
  }

}

class Doctor_dec extends State<About_doctor>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("About Doctor"),
      ),
      body: ListView(
        children: [
          Container(
            
          ),
        ],
      ),
    );
  }

}