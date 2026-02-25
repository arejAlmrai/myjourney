import 'package:flutter/material.dart';
import 'package:travel_app/screens/categories_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      home: const CategoriesScreen(),
    );
  }
}