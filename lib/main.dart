import 'package:drug_store/detail.dart';
import 'package:drug_store/homepage.dart';
import 'package:drug_store/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        brightness: Brightness.light,primarySwatch: Colors.amber
      ),
    );
  }
}