import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/BMI_Calculator.dart';
import 'package:health_app/Login_screeen.dart';
import 'package:health_app/drawer_screen.dart';
import 'package:health_app/Profile_Screen.dart';
import 'package:health_app/slider.dart';
import 'package:health_app/yoga_screen.dart';
import 'Appointment.dart';
import 'Contact_us.dart';
import 'Druglist.dart';
import 'Doctor_Screen.dart';
import 'find_hospital.dart';
import 'login_design.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget potrate() {
      return Stack(fit: StackFit.expand, children: <Widget>[
        FractionallySizedBox(
          child: ListView(
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
        ),
      ]);
    }




    Widget landscape() {
      return Stack(fit: StackFit.expand, children: <Widget>[
        FractionallySizedBox(
          child: ListView(
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
                                          builder: (context) =>
                                              Doctor_Screen()),
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
                                            contentPadding:
                                                const EdgeInsets.only(
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
                                            contentPadding:
                                                const EdgeInsets.only(
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
                                            contentPadding:
                                                const EdgeInsets.only(
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
                                            contentPadding:
                                                const EdgeInsets.only(
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
                        padding: const EdgeInsets.only(left: 200)),
                  ],
                ),
                padding: const EdgeInsets.all(10),
              ),
            ],
          ),
        ),
      ]);
    }



    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Health App"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Abhsihek'),
              accountEmail: Text('abandi@skycliffit.com'),
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
              onTap: () async {
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                await preferences.remove('login');

                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Login_screen()),
                );
              },
            ),
          ],
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return potrate();
          } else {
            return landscape();
          }
        },
      ),
    );
  }
}
