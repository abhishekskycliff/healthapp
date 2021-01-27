import 'package:flutter/material.dart';
import 'package:health_app/yoga_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Appointment.dart';
import 'BMI_Calculator.dart';
import 'Contact_us.dart';
import 'Doctor_Screen.dart';
import 'Druglist.dart';
import 'Login_screeen.dart';
import 'Profile_Screen.dart';
import 'find_hospital.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return home_State();
  }
}

class home_State extends State<Home>{
  SharedPreferences logindata;
  String username;

  @override
  void initState(){
    super.initState();
    initial();
  }

  void initial() async{
    logindata =await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Abhsihek'),
              accountEmail: Text('$username'),
              currentAccountPicture: CircleAvatar(
                foregroundColor: Colors.green,
                child: Text(
                  'A',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.blueAccent,
                ),
                title: Text("My Profile"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Profile_screen()),
                  );
                }),
            ListTile(
                leading: Icon(
                  Icons.accessibility_new,
                  color: Colors.blueAccent,
                ),
                title: Text('Yoga'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Yoga_screen()),
                  );
                }),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.blueAccent,
              ),
              title: Text('Calculate BMI'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (contaext) => BMI_Calculator()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_outlined,
                color: Colors.blueAccent,
              ),
              title: Text('Find Doctor'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Doctor_Screen()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance,
                color: Colors.blueAccent,
              ),
              title: Text('Find Hospital'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Hospital_Screen()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.add_to_photos_outlined,
                color: Colors.blueAccent,
              ),
              title: Text('Appointment'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Appoitment_screen()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_today,
                color: Colors.blueAccent,
              ),
              title: Text('Drug List'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Druglist()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blueAccent,
              ),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Contactus()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.blueAccent,
              ),
              title: Text('Logout'),
              onTap: () {
                logindata.setBool('login', true);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> Login_screen()));
              }
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Hello,',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  title: Text("$username",style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'How Can We take care yourself?',
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
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Doctor_Screen()),
                              );
                            },
                            padding: const EdgeInsets.all(0),
                            child: Card(
                              elevation: 80,
                              child: Container(
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Icon(
                                        Icons.account_circle,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Find Doctor",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "210 Doctors",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white60,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.only(
                                          top: 20, left: 15),
                                    )
                                  ],
                                ),
                                width: 150,
                                height: 150,
                              ),
                              color: Colors.blue,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Hospital_Screen()),
                              );
                            },
                            padding: const EdgeInsets.all(0),
                            child: Card(
                              child: Container(
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Icon(
                                        Icons.account_balance,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Find Hospital",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "30 Hospital",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white60,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.only(
                                          top: 20, left: 15),
                                    )
                                  ],
                                ),
                                width: 150,
                                height: 150,
                              ),
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Appoitment_screen()),
                              );
                            },
                            padding: const EdgeInsets.all(0),
                            child: Card(
                              child: Container(
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Icon(
                                        Icons.local_hospital_outlined,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Appointment",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "56 available",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white60,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.only(
                                          top: 20, left: 15),
                                    )
                                  ],
                                ),
                                width: 150,
                                height: 150,
                              ),
                              color: Colors.black54,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Druglist()),
                              );
                            },
                            padding: const EdgeInsets.all(0),
                            child: Card(
                              child: Container(
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Icon(
                                        Icons.calendar_today,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "DrugList",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "22 Services",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white60,
                                        ),
                                      ),
                                      contentPadding: const EdgeInsets.only(
                                          top: 20, left: 15),
                                    )
                                  ],
                                ),
                                width: 150,
                                height: 150,
                              ),
                              color: Colors.black54,
                            ),
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
          ),
        ],
      ),
    );
  }
  
}