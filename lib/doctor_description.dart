import 'package:flutter/material.dart';
import 'package:health_app/drawer_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class doctor_description extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return doctor_info();
  }
}

class doctor_info extends State<doctor_description>{
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
            child: Column(
              children: [
                Container(
                  child: Image.network("https://cdn.dribbble.com/users/1212356/screenshots/6038546/c_hipertensao.gif"),
                ),
                  Container(
                    child:
                        FractionalTranslation(
                          translation: Offset(0, -0.1,),
                          child: Align(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      width: 100,
                                      height: 100,
                                      padding: const EdgeInsets.all(0),
                                      margin: const EdgeInsets.all(0),
                                    ),
                                  ],
                                ),
                                height:450,
                                width: 400,
                              ),
                            ),
                          ),
                        ),


                  ),
              ],
            ),
            color: Colors.white,
          ),
        ],
      ),
    );
  }

}