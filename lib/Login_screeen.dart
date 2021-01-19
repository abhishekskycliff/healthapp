import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/Register_screen.dart';
import 'package:health_app/main.dart';
import 'package:health_app/Home_screen.dart';
import 'package:health_app/drawer_screen.dart';

class Login_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Login();
  }
}
class Login extends State<Login_screen>{

  var email = TextEditingController();
  var password = TextEditingController();

  void verify(){
    setState(() {
      var check_email = email.text;
      var check_password = password.text;
if(check_email == "" && check_password == ""){
  return showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title:Row(
        children: [
          Text("Enter your email id and pasword",
          style: TextStyle(
            fontSize: 15,
          ),),
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

}
    else if(check_email == "abandi@skycliff.com" && check_password == "12345")
        {
          return showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title:Row(
                children: [
                  Image.network('https://i.pinimg.com/originals/81/eb/f3/81ebf3a9b09d1f64e911e08df565c742.gif',
                  width: 80,height: 80,),
                  Text("congratulations"),
                ],
              ),
              content: Text("Login Successfull"),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Home_screen() ),
                    );
                  },
                  child: Text("ok"),
                  color: Colors.green,
                ),
              ],
            ),
          );

        }
      else{
        return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title:Row(
              children: [
                Image.network('https://www.seekpng.com/png/detail/138-1387775_login-to-do-whatever-you-want-login-icon.png',
                width: 50,
                height: 50,),
                Text("Register"),
              ],
            ),

            content: Text("Please Register before login"),

            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Register() ),
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
        child: ListView(
          children:<Widget> [
            Container(
              child: Builder(
                builder: (context) => Center(
                  child: ElevatedButton(
                    onPressed: () => Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("sample"),
                    ),
                    ),
                    child: Text("click"),
                  ),
                ),
              ),
              // RaisedButton(
              //   onPressed: () => Scaffold.of(context).showSnackBar(
              //     SnackBar(content: Text("sample"),
              //     ),
              //   ),
              //
              // ),
            ),


                // onPressed: () =>
                //
                //   Scaffold.of(context).showSnackBar(snackbar)
                //
                //
                //
                // //   showSnackBar{
                // //     SnackBar(
                // //       content: Text("Thank you"),
                // //       action: SnackBarAction(
                // //         label: 'Undo',
                // //         onPressed: (){
                // //
                // //         },
                // //       ),
                // //     );
                // //    }
                // // },
                // child: Text('show Snackbar'),

            Container(
              child:Image.asset('assets/images/blood.jpg',
                width: 180,
                height: 180,
              ),
            ),
            ListTile(
              title: Text('LOGIN',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              ),
              ),
            ),
            ListTile(
              title:Text("Email",
              style: TextStyle(
              fontSize: 15,
              ),
              ),
            ),
            Card(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Register Email"
                  ),
                controller: email,
                ),
              margin: const EdgeInsets.only(left: 30, right: 30),
            ),
            ListTile(
              title:Text("Password",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Card(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your password"
                ),
                controller: password,
              ),
              margin: const EdgeInsets.only(left: 30, right: 30),
            ),

            Container(
              child: RaisedButton(
                onPressed: verify,
                child: Text('Login'),
                color: Colors.green,
              ),
              margin: const EdgeInsets.only(left: 120,right: 120,top: 50,),
            ),
            Image.network("")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context,
            MaterialPageRoute(builder: (context) => Register()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}