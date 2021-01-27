import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexcolor/hexcolor.dart';

class BMI_Calculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BMI_info();
  }
}

class BMI_info extends State<BMI_Calculator>{

  double weight=45;
  double height= 05;
  var result;
  double BMI= 0;

  void CalculateBMI(){
    setState(() {
      double weight1 = weight * 10000;
      double height1 = height * 30.48;
      double sqrheight = height1 * height1;
      BMI = (weight1/sqrheight);
      print(BMI);

      if(BMI<18.50){
        result = "You are underWeight,";
      }
      else if(BMI>18.50 && BMI<25.00){
        result = "You are Normal";
      }
      else{
        result="You are Over Weight";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
      ),
      body:ListView(
        children: [
          Card(
            elevation: 6,
            child: Container(
              child:Column(
                children: [
                  ListTile(
                    title: Text("Select your Weight in KG",style: TextStyle(
                      fontSize: 20,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Container(
                    child: Slider(
                      value: weight,
                      min: 0,
                      max: 150,
                      divisions: 150,
                      label: weight.round().toString(),
                      onChanged: (double value){
                        setState(() {
                          weight =value;
                        });
                      },
                    ),
                  ),
                  Container(
                    child: Text("$weight",style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ],
              ),
              width: 100,
              height: 150,
            ),
          ),
          Card(
            elevation: 6,
            child: Container(
              child:Column(
                children: [
                  ListTile(
                    title: Text("Select your height in feet",style: TextStyle(
                      fontSize: 20,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Container(
                    child: Slider(
                      value: height,
                      min: 0,
                      max: 50,
                      divisions: 50,
                      label: height.round().toString(),
                      onChanged: (double value){
                        setState(() {
                          height =value;
                        });
                      },
                    ),
                  ),
                  Container(
                    child: Text("$height",style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ],
              ),
              width: 100,
              height: 150,
            ),
          ),
          Card(
            elevation: 6,
            child: Container(
              child:Column(
                children: [
                  Container(
                    child: Text("$BMI",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    ),
                    margin: const EdgeInsets.all(20),
                  ),
                  Container(
                    child: Text("$result",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.indigo,
                    ),
                    ),
                    margin: const EdgeInsets.all(20),
                  ),
                ],
              ),
              width: 100,
              height: 150,
            ),
          ),
          Container(
            child:ElevatedButton(
              onPressed: CalculateBMI,
              child: Text("Calculate"),
            ),
            height: 50,
            margin: const EdgeInsets.only(top: 40,left: 70,right: 70),
          ),
        ],
      ),
    );
  }
}