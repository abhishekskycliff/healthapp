
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactus extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return contact_state();
  }
}

class contact_state extends State<Contactus> {


  make_call() async {
    const call = 'tel:+918752991548';
    if (await launch(call)){
      await launch(call);
    }
    else{
      throw 'could not launch $call';
    }
  }
  browser() async {
    const browse = 'http://www.skycliffit.com/';
    if (await launch(browse)){
      await launch(browse);
    }
    else{
      throw 'could not launch $browse';
    }
  }

  send_email() async {
    const email = 'mailto:abandi@gmail.com';
    if (await launch(email)){
      await launch(email);
    }
    else{
      throw 'could not launch $email';
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: ListView(
        children: [
                Container(
                  child: Image.asset("assets/images/contact_image.png"),
                ),
                Container(
                  child: Column(
                    children: [
                      FractionalTranslation(
                        translation: Offset(0, -0.4),
                        child: Align(
                          child: Card(
                            child: Container(
                              child: Icon(Icons.watch),
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  color: HexColor("#3C2361"),
                  margin: const EdgeInsets.only(top: 20),
                ),
                ListTile(
                  title: Text("About us", style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Skycliff IT is passionately built to excel in "
                        "Quality, Value and Time driven Techno Commercial world. "
                        "We understand the Customer Requirements and Time bound"
                        " business commitments, thus, perform time critical "
                        "processes to deliver accurate results with quality "
                        "as the prime and unique proposition.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 3,
                    ),
                  ),
                ),
                Container(
                  child:  FlatButton(onPressed: browser,
                    child: Text("Read More",
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 220),
                ),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomRight,
                        child: FloatingActionButton(
                          onPressed: make_call,
                          heroTag: "btn1",
                          child: Icon(Icons.call),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.5,0.1),
                        child: FloatingActionButton(
                          onPressed: send_email,
                          heroTag: "btn2",
                          child: Icon(Icons.mail_rounded),
                        ),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(20),
                ),
          //color: HexColor("#FAF2DA"),
        ],
      ),
    );
  }
}