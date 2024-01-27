import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app/pages/HomePage.dart';

class Loader extends StatefulWidget {

  @override
  State<Loader> createState() => _LoaderState();

}

class _LoaderState extends State<Loader> {


  void checkTimer(){
  Timer(Duration(seconds: 4),() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>  HomePage()));
  });
}

  @override
  void initState() {

    super.initState();
    checkTimer();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00AEEE),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/quiz.png',
              height: 100,
              width: 100,
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
