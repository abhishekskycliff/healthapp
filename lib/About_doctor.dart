import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class About_doctor extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Doctor_dec();
  }

}

class Doctor_dec extends State<About_doctor>{
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
            child: Image.network("https://i.pinimg.com/originals/7c/07/54/7c075451aa96f9c01ee1b9118203df1d.jpg"),
          ),
          Container(
                child: Column(
                  children: [
                    FractionalTranslation(
                      translation: Offset(0.0,-0.08),
                      child: Align(
                        child: Container(
                          child:Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),
                            elevation: 15,
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Container(
                                            child:Image.asset("assets/images/doctor1.png"),
                                            margin: const EdgeInsets.all(10),
                                          ),
                                          decoration: BoxDecoration(
                                            color: HexColor("#4b7ffc"),
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          width: 100,
                                          height: 100,
                                          margin: const EdgeInsets.all(20),
                                        ),
                                        Container(
                                          child:Column(
                                            children: [
                                              Text("Dr. Stella Kane",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),),
                                              Text("heart Surgeon-Flower Hospital",style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: HexColor("#636680")
                                              ),
                                              ),
                                              Container(
                                                child:Row(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: HexColor("#E9F2FE"),
                                                        borderRadius: BorderRadius.circular(10)
                                                      ),
                                                      width: 40,
                                                      height: 40,
                                                      margin: const EdgeInsets.all(5),
                                                      child: Icon(Icons.add_call,color: Colors.indigoAccent),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: HexColor("#F6F2CD"),
                                                          borderRadius: BorderRadius.circular(10)
                                                      ),
                                                      width: 40,
                                                      height: 40,
                                                      margin: const EdgeInsets.all(5),
                                                      child: Icon(Icons.message,color: Colors.orange),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: HexColor("#FAC7C7"),
                                                          borderRadius: BorderRadius.circular(10)
                                                      ),
                                                      width: 40,
                                                      height: 40,
                                                      margin: const EdgeInsets.all(5),
                                                      child: Icon(Icons.video_call,color: Colors.red),
                                                    ),
                                                  ],
                                                ),
                                                margin: const EdgeInsets.all(10),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ListTile(
                                    title:  Text("About Doctor",style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                  ),
                                  ListTile(
                                    title:  Text("A physician, medical practitioner, "
                                        "medical doctor, or simply doctor, is a"
                                        " professional who practises medicine, "
                                        "which is concerned with promoting, maintaining,"
                                        " or restoring health through the study, diagnosis,"
                                        " prognosis and treatment of disease, injury,"
                                        " and other physical and mental impairments"
                                      ,style: TextStyle(
                                      fontSize: 14,
                                      color:Colors.black45 ,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                  ),
                                  ListTile(
                                    title:  Text("Upcomming Schedules",style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: HexColor("#CDE2F9"),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: HexColor("#A2CBFA"),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          width: 80,
                                          height: 80,
                                          margin: const EdgeInsets.all(20),
                                          child: Container(
                                            child: Text("12 Jan",style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: HexColor("#077BFF")
                                            ),
                                            ),
                                            margin: const EdgeInsets.only(left: 20,top: 15),
                                          ),
                                        ),
                                        Container(
                                          child:Column(
                                            children: [
                                              Text("Consultation",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),),
                                              Text("Sunday.   9am-11am",style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: HexColor("#636680")
                                              ),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    margin: const EdgeInsets.all(10),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: HexColor("#F6F2CD"),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: HexColor("#FABA80"),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          width: 80,
                                          height: 80,
                                          margin: const EdgeInsets.all(20),
                                          child: Container(
                                            child: Text("13 Jan",style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: HexColor("#FC7701")
                                            ),
                                            ),
                                            margin: const EdgeInsets.only(left: 20,top: 15),
                                          ),
                                        ),
                                        Container(
                                          child:Column(
                                            children: [
                                              Text("Consultation",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),),
                                              Text("Sunday.   9am-11am",style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: HexColor("#636680")
                                              ),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    margin: const EdgeInsets.all(10),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: HexColor("#F5FFF0"),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: HexColor("#E6FED9"),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          width: 80,
                                          height: 80,
                                          margin: const EdgeInsets.all(20),
                                          child: Container(
                                            child: Text("14 Jan",style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: HexColor("#59FE00")
                                            ),
                                            ),
                                            margin: const EdgeInsets.only(left: 20,top: 15),
                                          ),
                                        ),
                                        Container(
                                          child:Column(
                                            children: [
                                              Text("Consultation",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),),
                                              Text("Sunday.   9am-11am",style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: HexColor("#636680")
                                              ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    margin: const EdgeInsets.all(10),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          height: 800,
                          width: 400,
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