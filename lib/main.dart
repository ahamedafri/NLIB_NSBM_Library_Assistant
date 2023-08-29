import 'package:flutter/material.dart';
import './app_files/category_i_files/home_page.dart';
import './app_files/category_i_files/favourite_page.dart';
import './app_files/category_i_files/book_categories.dart';
import './app_files/category_i_files/borrowed_books.dart';
import 'app_files/app_credentials/sign_in.dart';
import 'app_files/app_credentials/splash_screen.dart';
import 'app_files/app_credentials/welcome_note1_category1.dart';
import 'app_files/app_credentials/welcome_note2_category1.dart';
import 'app_files/app_credentials/welcome_note3_category1.dart';
import 'app_files/category_i_files/dynamic_book.dart';
import 'app_files/category_i_files/notification.dart';

import './utils/app_colors.dart';
import 'app_files/category_i_files/profile.dart';
import 'app_files/category_i_files/user_settings.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.BASE_COLOR),
        useMaterial3: true,
      ),
      home: UserSettings(),
    );
  }
}
