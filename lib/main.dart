import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:startupui/pages/payment.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Payment(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}