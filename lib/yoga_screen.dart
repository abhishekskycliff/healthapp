import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Yoga_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return Yoga();
  }
}

class Yoga extends State<Yoga_screen>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Yoga"),
      ),
      body: ListView(
        children: [
          Card(
            elevation: 6,
            child: Container(
              child:Row(
                children: [
                  Image.network("https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/76980/meditation-clipart-xl.png",height:100,width: 200,),
                  Container(
                    child: Column(
                      children: [
                         Text("Vinyasa yoga",
                         style: TextStyle(
                           fontSize: 25,
                           color: Colors.indigo,
                           fontWeight: FontWeight.bold,
                         ),),
                      ],
                    ),margin: const EdgeInsets.only(left: 20,top: 55),
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
              child:Row(
                children: [
                  Image.network("https://assets.materialup.com/uploads/32077f8e-c1a2-4309-ac2b-c8071853a363/preview.png",width: 200,),
                  Container(
                    child: Column(
                      children: [
                        Text("Hatha yoga",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),margin: const EdgeInsets.only(left: 20,top: 55),
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
              child:Row(
                children: [
                  Image.network("https://i.pinimg.com/originals/2a/ed/36/2aed36923381338080e5703c4142d55a.png",width: 200,),
                  Container(
                    child: Column(
                      children: [
                        Text("Iyengar yoga",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),margin: const EdgeInsets.only(left: 20,top: 55),
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
              child:Row(
                children: [
                  Image.network("https://img.freepik.com/free-vector/woman-meditating-nature-leaves_113065-27.jpg?size=626&ext=jpg",width: 198,),
                  Container(
                    child: Column(
                      children: [
                        Text("Kundalini yoga",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),margin: const EdgeInsets.only(left: 20,top: 55),
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
              child:Row(
                children: [
                  Image.network("https://img.freepik.com/free-vector/man-meditating-concept_23-2148508453.jpg?size=338&ext=jpg",width: 196,),
                  Container(
                    child: Column(
                      children: [
                        Text("Ashtanga yoga",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),margin: const EdgeInsets.only(left: 20,top: 55),
                  ),
                ],
              ),
              width: 100,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }

}