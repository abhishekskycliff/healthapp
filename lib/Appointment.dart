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
        child: Center(
          child: Column(
            children: [
              Image.network("https://i.pinimg.com/736x/6e/b8/d9/6eb8d959e858c648a00fc269e3bbf579.jpg"),
              Text("You have No Appointment",style: TextStyle(
                fontSize: 20,
                color: Colors.black26,
                fontWeight: FontWeight.bold,
              ),),
            ],
          )
        ),
      ),
    );
  }
}