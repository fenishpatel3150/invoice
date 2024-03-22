import 'package:flutter/material.dart';
import 'package:invoice/screen/Homescreen.dart';
import 'package:invoice/screen/pdfscreen.dart';
import 'package:invoice/screen/secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Homescreen(),
        '/second':(context) => Secondscreen(),
        '/pdf':(context) => pdfscreen(),
      },
    );
  }
}
