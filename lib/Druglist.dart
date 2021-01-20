import 'package:flutter/material.dart';

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
      body: Container(
        child: Text("Drug"),
      ),
    );
  }

}