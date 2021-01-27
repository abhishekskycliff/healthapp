import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:health_app/drawer_screen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login_screeen.dart';

class Profile_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return profile();
  }
}

class profile extends State<Profile_screen>{

  SharedPreferences logindata;
  String username;

  @override
  void initState(){
    super.initState();
    initial();
  }

  void initial() async{
    logindata =await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 80),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.network("https://i.dlpng.com/static/png/6728153_preview.png"),
              ),
             Container(
               child: Text("Abhishek Bandi",
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               margin: const EdgeInsets.only(top: 15),
             ),
              Container(
                child: Text("$username",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                margin: const EdgeInsets.only(top: 15),
              ),
              Container(
                child: FlatButton(
                  onPressed: ()
                  {
                    Navigator.of(context).push
                      (
                      MaterialPageRoute(builder: (context) => Login_screen() ),
                    );
                  },
                  child: Text("Sign Out",style: TextStyle(
                  color: Colors.white,
                  ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    color: HexColor("#FE4848")
                ),
                margin: const EdgeInsets.only(top: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}