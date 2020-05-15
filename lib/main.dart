import 'package:appingles/Home.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff795548),
          accentColor: Colors.white,
          scaffoldBackgroundColor: Color(0xfff5e9b9)
      ),
    )
);
