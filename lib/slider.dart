import 'package:flutter/material.dart';


/// This is the main application widget.
class MyApp_slider extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("hello"),
        ),
        body: MyStatefulWidget(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double weight = 20;
  double height = 20;

  //var _currentSliderValue = TextEditingController();
  //var WeightController = TextEditingController();

  double BMI =0 ;
  var result= null;
  void CalculateBMI(){
    setState(() {



         double weight1 = weight * 10000;
         double height1 = height * 30.48;
         double sqrheight = height1 * height1;
         BMI = (weight1/sqrheight);
      print(weight1);
      print(height1);
      print(BMI);


      if(BMI<18.50){
        result= "You are under weight";
      }
      else if(BMI>18.50 && BMI<25){
        result = "You are Normal";
      }
      else{
        print(" You are overweight");
      }

    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Slider(
            value: weight,
            min: 0,
            max: 100,
            divisions: 100,
            label: weight.round().toString(),
            onChanged: (double value) {
              setState(() {
                weight= value;
              });
            },
          ),
          Text("$weight",style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          ),
          ),


          Slider(
            value: height,
            min: 0,
            max: 150,
            divisions: 150,
            label: height.round().toString(),
            onChanged: (double value) {
              setState(() {
                height= value;
              });
            },
          ),
          Text("$height",style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
          ),
          Container(
            child: RaisedButton(
              child:Text("Calculate"),
              color: Colors.blueAccent,
              onPressed:CalculateBMI,
            ),
          ),
          Text("$BMI"),
        Text("$result"),
        ],
      ),
    );
  }
}