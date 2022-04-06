import 'package:flutter/material.dart';
import 'package:food_delivery_customer/presentation/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Customer',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
