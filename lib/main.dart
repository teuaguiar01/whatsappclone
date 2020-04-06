import 'package:app1/app/app.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'zapzap',
      theme: ThemeData(
        primaryColor: Color(0xFF075E55),
      ),
      home: App(),
      
    );
  }
  
}





