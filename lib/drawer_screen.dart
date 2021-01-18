import 'package:flutter/material.dart';
import 'package:health_app/Login_screeen.dart';


class Drawer_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Profile_Screen();
  }
}

class Profile_Screen extends State<Drawer_Screen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title: Text('helth App'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName:Text('Abhsihek'),
                accountEmail: Text('abandi@skycliff.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.android
                ?Colors.blueAccent : Colors.white,
                child: Text('H',
                style: TextStyle(
                  fontSize: 50,
                ),),

              ),
          ),

              ListTile(
                leading: Icon(Icons.accessibility_new),
                title: Text("BMI"),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Login_screen() ),
                  );
                }
              ),
              ListTile(
                leading: Icon(Icons.account_circle_rounded),
                title: Text('Account'),
              ),
              ListTile(
                leading: Icon(Icons.settings_sharp),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
              ),
            ],
          ),
        ),
      );
  }

}