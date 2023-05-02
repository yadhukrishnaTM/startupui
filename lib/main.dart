import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:startupui/pages/payment.dart';
import 'package:startupui/provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ProgressProvider>(
    child: MyApp(),
    create: (_) => ProgressProvider(),
  ));
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