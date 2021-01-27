import 'package:flutter/material.dart';
import 'package:health_app/drawer_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class Hospital_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Hospital();
  }
}

class Hospital extends State<Hospital_Screen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Hospital"),
      ),
      body:ListView(
        children: [
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
                    child:Icon(Icons.account_balance,color:Colors.lightBlue,size: 50,),
                    // margin: const EdgeInsets.only(left: 20,top: 15),
                  ),
                ),
                Container(
                  child: Text("Flower Hospital",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.deepPurple,
                  ),),
                  margin: const EdgeInsets.only(left: 35, bottom:15),
                ),
              ],
            ),
            margin: const EdgeInsets.all(10),
          ),
          Container(
            decoration: BoxDecoration(
                color: HexColor("#cbf5f1"),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: HexColor("#76FDF2"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(20),
                  child: Container(
                    child:Icon(Icons.apartment,color:Colors.red,size: 50,),
                    // margin: const EdgeInsets.only(left: 20,top: 15),
                  ),
                ),
                Container(
                  child: Text("Bee Hospital",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.deepPurple,
                  ),),
                  margin: const EdgeInsets.only(left: 35, bottom:15),
                ),
              ],
            ),
            margin: const EdgeInsets.all(10),
          ),
          Container(
            decoration: BoxDecoration(
                color: HexColor("#f7d7d7"),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: HexColor("#FA7373"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(20),
                  child: Container(
                    child:Icon(Icons.add_business,color:Colors.blueGrey,size: 50,),
                    // margin: const EdgeInsets.only(left: 20,top: 15),
                  ),
                ),
                Container(
                  child: Text("Zee Hospital",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.deepPurple,
                  ),),
                  margin: const EdgeInsets.only(left: 35, bottom:15),
                ),
              ],
            ),
            margin: const EdgeInsets.all(10),
          ),
          Container(
            decoration: BoxDecoration(
                color: HexColor("#D0F4C5"),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: HexColor("#9EE18A"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(20),
                  child: Container(
                    child:Icon(Icons.apartment_rounded,color:Colors.blue,size: 50,),
                    // margin: const EdgeInsets.only(left: 20,top: 15),
                  ),
                ),
                Container(
                  child: Text("fortis Hospital",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.deepPurple,
                  ),),
                  margin: const EdgeInsets.only(left: 35, bottom:15),
                ),
              ],
            ),
            margin: const EdgeInsets.all(10),
          ),
          Container(
            decoration: BoxDecoration(
                color: HexColor("#cbf5f1"),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: HexColor("#76FDF2"),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 80,
                  height: 80,
                  margin: const EdgeInsets.all(20),
                  child: Container(
                    child:Icon(Icons.apartment,color:Colors.green,size: 50,),
                    // margin: const EdgeInsets.only(left: 20,top: 15),
                  ),
                ),
                Container(
                  child: Text("Honey Hospital",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.deepPurple,
                  ),),
                  margin: const EdgeInsets.only(left: 35, bottom:15),
                ),
              ],
            ),
            margin: const EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }

}