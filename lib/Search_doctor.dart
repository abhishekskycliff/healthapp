import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';

import 'About_doctor.dart';

class Search_doctor extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return search_doc();
  }
}

class search_doc extends State<Search_doctor>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Search your Doctor"),
      ),
      body: ListView(
        children: [
          Container(
            child: Text("Find Your Desired Doctor",
            style: TextStyle(
              fontSize: 30,
              color: HexColor("#4D0CA9"),
              fontWeight: FontWeight.bold,
            ),
            ),
            margin: const EdgeInsets.only(top: 40,left: 40,right: 40,bottom: 20),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search for Doctor'
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 40,right: 40),
          ),
          Container(
            child:  Text("Categories",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            margin: const EdgeInsets.all(20),
          ),
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        FractionalTranslation(
                            translation: Offset(0.5,-0.3),
                          child: Align(
                            child: Container(
                              height: 70,
                              width: 70,
                              child: Card(
                                color: HexColor("#4b7ffc"),
                                elevation: 15,
                                child:  Container(
                                  child: Image.asset('assets/images/tooth.png'),
                                  margin: const EdgeInsets.all(15),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),

                              padding: const EdgeInsets.only(left: 0),
                            ),
                          ),
                        ),
                        Container(
                          child: Text("Dental Surgeon",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color:HexColor("#4D0CA9")
                          ),
                          ),
                          margin: const EdgeInsets.only(left: 10,right: 10),
                        ),
                      ],
                    ),
                  ),
                  width: 120,
                  margin: const EdgeInsets.all(25),
                ),
                Container(
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        FractionalTranslation(
                          translation: Offset(0.5,-0.3),
                          child: Align(
                            child: Container(
                              height: 70,
                              width: 70,
                              child: Card(
                                color: HexColor("#fadec5"),
                                elevation: 15,
                                child:  Container(
                                  child: Image.network("https://cdn2.iconfinder.com/data/icons/medicine-iconset-monoline/32/heart-512.png"),
                                  margin: const EdgeInsets.all(15),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.only(left: 0),
                            ),
                          ),
                        ),
                        Container(
                          child: Text("Heart Surgeon",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color:HexColor("#4D0CA9")
                          ),
                          ),
                          margin: const EdgeInsets.only(left: 10,right: 10),
                        ),
                      ],
                    ),
                  ),
                  width: 120,
                  margin: const EdgeInsets.all(25),
                ),
                Container(
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        FractionalTranslation(
                          translation: Offset(0.5,-0.3),
                          child: Align(
                            child: Container(
                              height: 70,
                              width: 70,
                              child: Card(
                                color: HexColor("#f67e71"),
                                elevation: 15,
                                child:  Container(
                                  child: Image.asset('assets/images/eye.png'),
                                  margin: const EdgeInsets.all(15),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.only(left: 0),
                            ),
                          ),
                        ),
                        Container(
                          child: Text("Eye Surgeon",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color:HexColor("#4D0CA9")
                          ),
                          ),
                          margin: const EdgeInsets.only(left: 10,right: 10),
                        ),
                      ],
                    ),
                  ),
                  width: 120,
                  margin: const EdgeInsets.all(25),
                ),
                Container(
                  child: Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        FractionalTranslation(
                          translation: Offset(0.5,-0.3),
                          child: Align(
                            child: Container(
                              height: 70,
                              width: 70,
                              child: Card(
                                color: HexColor("#d1ede2"),
                                elevation: 15,
                                child:  Container(
                                  child: Image.asset('assets/images/kidneya.png'),
                                  margin: const EdgeInsets.all(15),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.only(left: 0),
                            ),
                          ),
                        ),
                        Container(
                          child: Text("kidney Surgeon",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color:HexColor("#4D0CA9")
                          ),
                          ),
                          margin: const EdgeInsets.only(left: 10,right: 10),
                        ),
                      ],
                    ),
                  ),
                  width: 120,
                  margin: const EdgeInsets.all(25),
                ),
              ],
            ),
            width: 150,
            height: 190,
          ),
          Container(
            child: Text("Top Doctors",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            margin: const EdgeInsets.all(20),
          ),
          FlatButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => About_doctor() ),
              );
            },
            child: Container(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: HexColor("#4b7ffc"),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Container(
                      child: Image.asset('assets/images/doctor1.png'),
                      margin: const EdgeInsets.all(10),
                    ),
                    width: 80,
                    height: 80,
                    margin: const EdgeInsets.all(15),
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
                       ),),
                     ],
                   ),
                   padding: const EdgeInsets.all(30),
                 ),
                ],
              ),
              decoration: BoxDecoration(
                  color: HexColor("#eef1fa"),
                borderRadius: BorderRadius.circular(20)
              ),
              width: 400,
              height: 120,
              margin: const EdgeInsets.only(top: 20,left:20,right: 20),
            ),
            padding: const EdgeInsets.all(0),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: HexColor("#F87012"),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Container(
                    child: Image.asset('assets/images/doctor2.png'),
                    margin: const EdgeInsets.all(10),
                  ),
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(15),
                ),
                Container(
                  child:Column(
                    children: [
                      Text("Dr. Joseph Cart",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                      Text("Dental Surgeon-Flower Hospital",style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: HexColor("#636680")
                      ),),
                    ],
                  ),
                  padding: const EdgeInsets.all(27),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: HexColor("#fadec5"),
                borderRadius: BorderRadius.circular(20)
            ),
            width: 150,
            height: 120,
            margin: const EdgeInsets.only(top: 20,left:20,right: 20),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: HexColor("#F24935"),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Container(
                    child: Image.asset('assets/images/doctor3.png'),
                    margin: const EdgeInsets.all(10),
                  ),
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(15),
                ),
                Container(
                  child:Column(
                    children: [
                      Text("Dr. stev joe",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                      Text("heart Surgeon-Flower Hospital",style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: HexColor("#636680")
                      ),),
                    ],
                  ),
                  padding: const EdgeInsets.all(30),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: HexColor("#f67e71"),
                borderRadius: BorderRadius.circular(20)
            ),
            width: 150,
            height: 120,
            margin: const EdgeInsets.only(top: 20,left:20,right: 20),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: HexColor("#5ff5ba"),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Container(
                    child: Image.asset('assets/images/doctor4.png'),
                    margin: const EdgeInsets.all(1),
                  ),
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(15),
                ),
                Container(
                  child:Column(
                    children: [
                      Text("Dr. Rahul B",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                      Text("heart Surgeon-Flower Hospital",style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: HexColor("#636680")
                      ),),
                    ],
                  ),
                  padding: const EdgeInsets.all(30),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: HexColor("#d1ede2"),
                borderRadius: BorderRadius.circular(20)
            ),
            width: 150,
            height: 120,
            margin: const EdgeInsets.only(top: 20,left:20,right: 20),
          ),
        ],
      ),
    );
  }

}