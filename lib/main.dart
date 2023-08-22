import 'package:flutter/material.dart';
import 'package:study_room/pages/study_Home.dart';
import 'package:wakelock/wakelock.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Wakelock.enable();
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: studyHome(),
    );
  }
}

























