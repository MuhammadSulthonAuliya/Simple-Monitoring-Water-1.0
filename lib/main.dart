import 'package:flutter/material.dart';
import 'package:monitorair/main_screen/mainScreen.dart';

// Kode main

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Monitoring Air',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
