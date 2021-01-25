
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class contactus extends StatelessWidget{

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

// send_mail() async {
//     const  = ''
// }
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
            child: Column(
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
                Container(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("About us",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      ListTile(
                        title: Text("Skycliff IT is passionately built to excel in "
                            "Quality, Value and Time driven Techno Commercial world. "
                            "We understand the Customer Requirements and Time bound"
                            " business commitments, thus, perform time critical "
                            "processes to deliver accurate results with quality "
                            "as the prime and unique proposition.",style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          wordSpacing: 3,
                        ),
                        ),
                      ),
                      FlatButton(onPressed: browser,
                        child: Text("Read More",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  color: HexColor("#FAF2DA"),
                ),
                Container(
                  child: Row(
                    children: [
                      FlatButton(
                        onPressed: make_call,
                        child:    Container(
                          child: Icon(Icons.add_call,color: Colors.blue,size: 30,),
                          decoration: BoxDecoration(
                              color: HexColor("#E4E0EA"),
                              borderRadius: BorderRadius.circular(40)
                          ),
                          padding: const EdgeInsets.all(20),
                        ),
                      ),

                      FlatButton(
                        onPressed: send_email(),
                        child:     Container(
                          child: Icon(Icons.mail_sharp,color: Colors.orange,size: 30,),
                          decoration: BoxDecoration(
                              color: HexColor("#E4E0EA"),
                              borderRadius: BorderRadius.circular(40)
                          ),
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.all(15),
                        ),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(left: 138,right: 20,top: 40),
                  color: HexColor("#FAF2DA"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}