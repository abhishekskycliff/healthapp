import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/Login_screeen.dart';

class BMI_calculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BMI_info();
  }

}

class BMI_info extends State<BMI_calculator>{

  var hightController = TextEditingController();
  var WeightController = TextEditingController();

  double BMI =0 ;
  void CalculateBMI(){
    setState(() {

      double weight = double.parse(WeightController.text);
      double height = double.parse(hightController.text);
      double weight1 = weight * 10000;
      double height1 = height * 30.48;
      double sqrheight = height1 * height1;
      BMI = (weight1/sqrheight);
      print(BMI);

      if(BMI<20){
        print("YOur Under weight");
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Your weight in kg"
                    ),
                    controller: WeightController,

                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(

                        ),
                        hintText: "Enter your height in feet"
                    ),
                    controller: hightController,
                  ),
                ],
              ),
            ),
            Container(
              child: RaisedButton(
                child:Text("Calculate"),
                color: Colors.blueAccent,
                onPressed:CalculateBMI,
              ),
            ),
            Container(
              child: Text('$BMI'),
            ),
          ],
        ),
      ),
    );
  }
}



