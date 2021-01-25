import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Search_doctor.dart';

class Doctor_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Doctor();
  }

}

class Doctor extends State<Doctor_Screen>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Doctor"),
      ),
      body: ListView(
        children: [
          Container(
            child:Text("Choose The Doctor You Want",style: TextStyle(
              fontSize: 30,
              color: HexColor("#4D0CA9"),
              fontWeight: FontWeight.bold
            ),
            ),
            margin: const EdgeInsets.only(top: 40,left: 40,right: 40,bottom: 20),
          ),
          Container(
            child: Text("Find your Doctor and talk with them",style: TextStyle(
              fontSize: 16,
              color: HexColor("#380B76")
            ),
            ),
            margin: const EdgeInsets.only(left: 40, bottom: 20)
          ),
          Container(
            child: FlatButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Search_doctor()),
                );
              },
              child: Text("Get Stated",
              style: TextStyle(
                color: Colors.white,
              ),),
            ),
            decoration: BoxDecoration(
              color: HexColor("#FF5733"),
              borderRadius: BorderRadius.circular(40)
            ),
            margin: const EdgeInsets.only( left:30,right: 200),
          ),
          Container(
            child: Image.asset('assets/images/doctor.png'),
          )
        ],
      ),
    );
  }

}