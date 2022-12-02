import 'package:fitness_app/screens/list.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:fitness_app/screens/signup.dart';
import 'package:fitness_app/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Iforgot(),
    );
  }
}

class Iforgot extends StatefulWidget {
  @override
  _IforgotState createState() => _IforgotState();
}

class _IforgotState extends State<Iforgot> {
  @override
  Widget build(BuildContext context) {
    String email = '';
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Forgot Password"),
        centerTitle: true,
        backgroundColor: Color(0xff192a56),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/MyFit-removebg-preview.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
              child: TextField(
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.mail),
                    hintText: 'Enter your email ID'),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Color(0xff192a56),
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () async {
                  FirebaseAuth.instance
                      .sendPasswordResetEmail(email: email)
                      .then((value) {
                    print("Mail sent successfully");
                  }).onError((error, stackTrace) {
                    print("An error occured");
                  });
                },
                child: Text(
                  'Send E-mail',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            //Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}
