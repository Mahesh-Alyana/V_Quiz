import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quizstar/home.dart';

// ignore: camel_case_types
class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

// ignore: camel_case_types
class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "V_Quiz",
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                  fontFamily: "Satisfy",
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Test Yourself !!",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontFamily: "Satisfy",
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
