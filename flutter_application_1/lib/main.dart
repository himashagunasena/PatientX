import 'package:flutter/material.dart';

import 'package:flutter_application_1/Screen/Welcome.dart';
import 'package:flutter_application_1/Screen/example.dart';
import 'package:flutter_application_1/Screen/signup.dart';

import 'package:flutter_application_1/constract.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      theme: ThemeData(
        primaryColor: PrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Welcome(),
    );
    
  }
}
