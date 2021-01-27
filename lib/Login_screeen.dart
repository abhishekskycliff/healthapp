import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/Register_screen.dart';
import 'package:health_app/main.dart';
import 'package:health_app/Home_screen.dart';
import 'package:health_app/drawer_screen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Home.dart';

class Login_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Login();
  }
}

class Login extends State<Login_screen> {

  final email = TextEditingController();
  final password = TextEditingController();

  SharedPreferences logindata;
  bool newuser;

  @override

  /// initState method which initilize the current state or root

  void initState(){
    super.initState();
    check_if_already_login();
    print("init");
  }

  /// check_if_already_login method which check if user is already login or not

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);

    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Home()));
    }
  }

  /// Dispose method which clears the message

  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    password.dispose();
    super.dispose();
    print("dispose");
  }


  /// verify method which check the correct user name and password

  void verify() {
    setState(() {
      var check_email = email.text;
      var check_password = password.text;
      if (check_email == "" && check_password == "") {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Row(
              children: [
                Text(
                  "Enter your email id and pasword",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Text("ok"),
                color: Colors.blue,
              ),
            ],
          ),
        );
      } else if (check_email == "abandi@skycliffit.com" &&
          check_password == "12345") {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Row(
              children: [
                Image.network(
                  'https://i.pinimg.com/originals/81/eb/f3/81ebf3a9b09d1f64e911e08df565c742.gif',
                  width: 80,
                  height: 80,
                ),
                Text("congratulations"),
              ],
            ),
            content: Text("Login Successfull"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  String username = email.text;
                  String password_value = password.text;
                  if (username != '' && password_value != '') {
                    print('Successfull');
                    logindata.setBool('login', false);
                    logindata.setString('username', username);
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  }
                },
                child: Text("ok"),
                color: Colors.green,
              ),
            ],
          ),
        );
      } else {
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Row(
              children: [
                Image.network(
                  'https://www.seekpng.com/png/detail/138-1387775_login-to-do-whatever-you-want-login-icon.png',
                  width: 50,
                  height: 50,
                ),
                Text("Register"),
              ],
            ),
            content: Text("Please Register before login"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                child: Text("ok"),
                color: Colors.green,
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: CustomPaint(
          painter: CurvePainter(),
          child: ListView(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: CustomPaint(
                  painter: CurvePainter(),
                ),
              ),
              Container(
                child: Image.asset(
                  'assets/images/blood.jpg',
                  width: 180,
                  height: 180,
                ),
              ),
              ListTile(
                title: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      hintText: "Enter Your Register Email"),
                  controller: email,
                ),
                margin: const EdgeInsets.only(left: 30, right: 30),
              ),
              ListTile(
                title: Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    hintText: "Enter Your password",
                  ),
                  controller: password,
                ),
                margin: const EdgeInsets.only(left: 30, right: 30),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: RaisedButton(
                        onPressed: verify,
                        child: Text('Login'),
                        color: Colors.green,
                      ),
                      width: 150,
                      margin: const EdgeInsets.all(10),
                    ),
                    Container(
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        child: Text('Register'),
                        color: Colors.blue,
                      ),
                      width: 150,
                      margin: const EdgeInsets.all(10),
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(
                  left: 25,
                  right: 20,
                  top: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
