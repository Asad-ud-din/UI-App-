import 'package:app/History.dart';
import 'package:app/home.dart';
import 'package:app/link.dart';
import 'package:app/user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:link()
          ),
    );
  }
}
