import 'package:flutter/material.dart';
import 'package:health_app/Home_screen.dart';
import 'package:health_app/main.dart';

class Register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Register_screen();
  }
}

class Register_screen extends State<Register>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Container(
        child: ListView(
          children:<Widget> [
            Container(
              child:Image.asset('assets/images/blood.jpg',
                width: 130,
                height: 130,
              ),
            ),
            ListTile(
              title: Text('REGISTER',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title:Text("First Name",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Card(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your First Name"
                ),
              ),
              margin: const EdgeInsets.only(left: 30, right: 30),
            ),
            ListTile(
              title:Text("Last Name",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Card(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter YourLast Name"
                ),
              ),
              margin: const EdgeInsets.only(left: 30, right: 30),
            ),
            ListTile(
              title:Text("Email",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Card(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Email"
                ),
              ),
              margin: const EdgeInsets.only(left: 30, right: 30),
            ),
            ListTile(
              title:Text("password",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Card(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  fillColor: Colors.orange,
                ),
              ),
              margin: const EdgeInsets.only(left: 30, right: 30),
            ),

            Container(
              child: RaisedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home_screen()),);
                },
                child: Text('Register'),
                color: Colors.green,
              ),
              margin: const EdgeInsets.only(left: 120,right: 120,top: 50,),
            ),
          ],
        ),

      ),
    );
  }
}