import 'package:flutter/material.dart';
import 'package:websiteme/Homepage.dart';

void main() {
  runApp(MyWeb());
}

class MyWeb extends StatelessWidget {
  const MyWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}