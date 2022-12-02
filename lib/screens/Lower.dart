import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLower(),
    );
  }
}

class MyLower extends StatefulWidget {
  @override
  _MyLowerState createState() => _MyLowerState();
}

class _MyLowerState extends State<MyLower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00FFD1),
      appBar: AppBar(
        title: const Text('MyFit'),
        centerTitle: true,
        backgroundColor: Color(0xff192a56),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                //
              },
              child: Text(
                'Lower Body',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              onPressed: () {
                //
              },
              child: Image.asset(
                'assets/easy-legs-workout.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
