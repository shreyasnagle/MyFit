import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyUpper(),
    );
  }
}

class MyUpper extends StatefulWidget {
  @override
  _MyUpperState createState() => _MyUpperState();
}

class _MyUpperState extends State<MyUpper> {
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
                'Upper Body',
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
                'assets/upperbody-workout.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
