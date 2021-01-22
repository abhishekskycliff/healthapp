
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class contactus extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Container(
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
                ],
              ),
              color: HexColor("#FAF2DA"),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Icon(Icons.add_call,color: Colors.blue,size: 30,),
                    decoration: BoxDecoration(
                        color: HexColor("#E4E0EA"),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    padding: const EdgeInsets.all(20),
                  ),
                  Container(
                    child: Icon(Icons.mail_sharp,color: Colors.orange,size: 30,),
                    decoration: BoxDecoration(
                        color: HexColor("#E4E0EA"),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                  ),
                ],
              ),
              padding: const EdgeInsets.only(left: 180,right: 20,top: 80),
              color: HexColor("#FAF2DA"),
            ),
          ],
        ),
      ),
    );
  }
}