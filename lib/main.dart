import 'package:flutter/material.dart';
import './nlib_stu_home/stu_borrowed_books.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 155, 239, 160)),
        useMaterial3: true,
      ),
      home: BorrowedBooks(),
    );
  }
}
