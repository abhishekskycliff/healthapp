import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/Contact_us.dart';

class about_doctor extends StatelessWidget{
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
                  child: FractionalTranslation(
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
                                child: Row(
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
                                    Container(
                                      child: ListTile(
                                        title: Text("Hello"),
                                      ),
                                    ),
                                  ],
                                ),
                                color: Colors.deepOrange,
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
          ),
        ],
      ),
    );
  }

}