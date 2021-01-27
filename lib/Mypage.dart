import 'package:flutter/material.dart';

class MyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return page();
  }

}

class page extends State<MyPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("App Bar"),
       ),
       body: Container(),
     ),
   );
  }

}

// @override
//
// void initState(){
//   print('1a mount: $mounted');
//   print('2. initState');
//   super.initState();
// }