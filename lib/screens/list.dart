import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:fitness_app/screens/signup.dart';
import 'package:fitness_app/screens/Upper.dart';
import 'package:fitness_app/screens/Lower.dart';
import 'package:fitness_app/screens/Cardio.dart';
import 'package:fitness_app/screens/bmi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyList(),
    );
  }
}

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00FFD1),
      appBar: AppBar(
        title: const Text('MyFit'),
        centerTitle: true,
        backgroundColor: Color(0xff192a56),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.book),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MyBMI()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyUpper()));
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyUpper()));
              },
              child: Image.asset(
                'assets/workout1.jpg',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyLower()));
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyLower()));
              },
              child: Image.asset(
                'assets/squats.png',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyCardio()));
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyCardio()));
              },
              child: Image.asset(
                'assets/treadmill.jpg',
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
