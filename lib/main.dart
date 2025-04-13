import 'package:appmobile/custiom.dart';
import 'package:appmobile/matirial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'صفحة الإدخال',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Cairo', // إذا عندك خط مخصص
      ),
      home: const VisaCardPage(),
    );
  }
}
