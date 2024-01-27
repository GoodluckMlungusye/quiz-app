import 'package:flutter/material.dart';
import 'package:quiz_app/pages/HomePage.dart';
import 'package:quiz_app/pages/Loader.dart';
import 'package:quiz_app/categories/C_sharp.dart';
import 'package:quiz_app/categories/Cpp.dart';
import 'package:quiz_app/categories/C_plain.dart';
import 'package:quiz_app/categories/Java.dart';
import 'package:quiz_app/categories/R_plain.dart';
import 'package:quiz_app/categories/Python.dart';


void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    initialRoute: '/',

    routes: {
      '/': (context) => Loader(),
      '/HomePage': (context) => HomePage(),
      '/C_sharp': (context) => C_sharp(),
      '/Cpp': (context) => Cpp(),
      '/C_plain': (context) => C_plain(),
      '/Java': (context) => Java(),
      '/R_plain': (context) => R_plain(),
      '/Python': (context) => Python()
    },

  ));
}






