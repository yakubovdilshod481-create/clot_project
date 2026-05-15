import 'package:clot_project/home/presentation/pages/categories_page.dart';
import 'package:clot_project/home/presentation/pages/homepage.dart';
import 'package:clot_project/home/presentation/pages/notification_page2.dart';
import 'package:clot_project/home/presentation/pages/orders_page2.dart';
import 'package:clot_project/home/presentation/pages/orders_page3.dart';
import 'package:clot_project/home/presentation/pages/profile_page.dart';
import 'package:clot_project/home/presentation/pages/search_page.dart';
import 'package:clot_project/home/presentation/pages/search_page2.dart';
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
      title: 'Clot Project',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: ProfilePage(),
    );
  }
}
