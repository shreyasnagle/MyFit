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
      home: MyCardio(),
    );
  }
}

class MyCardio extends StatefulWidget {
  @override
  _MyCardioState createState() => _MyCardioState();
}

class _MyCardioState extends State<MyCardio> {
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
                'Cardio',
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
                'assets/cardio-bell-workout.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
