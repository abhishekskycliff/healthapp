import 'package:flutter/material.dart';

class Yoga_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return Yoga();
  }
}

class Yoga extends State<Yoga_screen>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Yoga"),
      ),
    );
  }

}