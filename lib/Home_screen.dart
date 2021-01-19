import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/BMI_Calculator.dart';
import 'package:health_app/Login_screeen.dart';

import 'login_design.dart';

class Home_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar: AppBar(
         title: Text("Health App"),
       ),
         drawer: Drawer(
           child: ListView(
             children: [
               UserAccountsDrawerHeader(
                 accountName:Text('Abhsihek'),
                 accountEmail: Text('abandi@skycliffit.com'),
                 currentAccountPicture: CircleAvatar(
                   foregroundColor: Colors.green,
                   child: Text('A',
                     style: TextStyle(
                       fontSize: 50,
                       color: Colors.black,
                     ),
                   ),
                 ),
               ),
               ListTile(
                   leading: Icon(Icons.account_circle, color: Colors.blueAccent,),
                   title: Text("My Profile"),
                   onTap: (){
                     Navigator.of(context).pop();
                     Navigator.of(context).push(
                       MaterialPageRoute(builder: (context) => login_design() ),
                     );
                   }
               ),
               ListTile(
                 leading: Icon(Icons.accessibility_new,color: Colors.blueAccent,),
                 title: Text('Yoga'),
                 onTap: () => Scaffold.of(context).showSnackBar(SnackBar(
                   content: Text("sample"),
                 ),
                 ),
                 //child: Text("click"),
               ),
               ListTile(
                 leading: Icon(Icons.account_circle,color: Colors.blueAccent,),
                 title: Text('Calculate BMI'),
               ),
               ListTile(
                 leading: Icon(Icons.account_circle_outlined,color: Colors.blueAccent,),
                 title: Text('Find Doctor'),
               ),
               ListTile(
                 leading: Icon(Icons.account_balance,color: Colors.blueAccent,),
                 title: Text('Find Hospital'),
               ),
               ListTile(
                 leading: Icon(Icons.add_to_photos_outlined,color: Colors.blueAccent,),
                 title: Text('Appointment'),
               ),
               ListTile(
                 leading: Icon(Icons.calendar_today,color: Colors.blueAccent,),
                 title: Text('Drug List'),
               ),
               ListTile(
                 leading: Icon(Icons.settings,color: Colors.blueAccent,),
                 title: Text('Settings'),
               ),
               ListTile(
                 leading: Icon(Icons.logout,color: Colors.blueAccent,),
                 title: Text('Logout'),
               ),
             ],
           ),
         ),
       body: Container(
         child: Column(
           children: [
             ListTile(
               title: Text('Hello,',
                 style:TextStyle(
                   fontSize: 25,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
             ListTile(
               title:  Text('How Can We take care yourself?',
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   color: Colors.blueGrey,
                 ),
               ),
             ),
             Container(
               child: Column(
                 children: [
                   Row(
                     children: [
                       FlatButton(
                           onPressed: () {Navigator.of(context).push(
                             MaterialPageRoute(builder: (context) => Login_screen() ),
                           );},
                           padding: const EdgeInsets.all(0),
                           child: Card(
                             elevation: 80,
                             child: Container(
                               child: Column(
                                 children: [
                                   ListTile(
                                     leading: Icon(Icons.account_circle,
                                       color: Colors.white,
                                       size: 40,),
                                   ),
                                   ListTile(
                                     title: Text("Find Doctor",
                                       style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         color: Colors.white,
                                       ),),
                                     subtitle: Text("210 Doctors",
                                       style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         color: Colors.white60,
                                       ),),
                                     contentPadding: const EdgeInsets.only(top: 20, left: 15),
                                   )
                                 ],
                               ),
                               width: 150,
                               height: 150,
                             ),
                             color: Colors.blue,
                           ),
                       ),
                       Card(
                         child: Container(
                           child: Column(
                             children: [
                               ListTile(
                                 leading: Icon(Icons.account_balance,
                                   color: Colors.white,
                                   size: 40,),
                               ),
                               ListTile(
                                 title: Text("Find Hospital",
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white,
                                   ),),
                                 subtitle: Text("30 Hospital",
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white60,
                                   ),),
                                 contentPadding: const EdgeInsets.only(top: 20, left: 15),
                               )
                             ],
                           ),
                           width: 150,
                           height: 150,
                         ),
                       color: Colors.black54,
                       ),
                     ],
               ),
                   Row(
                     children: [
                       Card(
                         child: Container(
                           child: Column(
                             children: [
                               ListTile(
                                 leading: Icon(Icons.add_to_photos,
                                 color: Colors.white,
                                 size: 40,),
                               ),
                              ListTile(
                                title: Text("Appointment",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                                subtitle: Text("50 Available",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white60,
                                ),),
                                contentPadding: const EdgeInsets.only(top: 20, left: 15),
                              )
                             ],
                           ),
                           width: 150,
                           height: 150,
                         ),
                         color: Colors.black54,
                       ),
                       Card(
                         child: Container(
                           child: Column(
                             children: [
                               ListTile(
                                 leading: Icon(Icons.calendar_today,
                                   color: Colors.white,
                                   size: 40,),
                               ),
                               ListTile(
                                 title: Text("DrugList",
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white,
                                   ),),
                                 subtitle: Text("22 Services",
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     color: Colors.white60,
                                   ),),
                                 contentPadding: const EdgeInsets.only(top: 20, left: 15),
                               )

                             ],
                           ),
                           width: 150,
                           height: 150,
                         ),
                         color: Colors.black54,
                       ),

                     ],
                   ),
                 ],
               ),
               padding: const EdgeInsets.all(27),
             ),
           ],
         ),
         padding: const EdgeInsets.all(10),
         color: Color.fromARGB(100, 255, 244, 214),
       ),
     );
  }

}